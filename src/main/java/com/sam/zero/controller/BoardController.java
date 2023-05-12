package com.sam.zero.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sam.zero.config.auth.PrincipalDetails;
import com.sam.zero.domain.PageVO;
import com.sam.zero.domain.Qnaboard;
import com.sam.zero.service.AdminService;
import com.sam.zero.service.BoardService;
import com.sam.zero.service.MemberService;
import com.sam.zero.service.ProductService;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("/board/**")
@Controller
@Slf4j
public class BoardController {
	@Autowired
	AdminService adminService;
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	ProductService pservice;
	
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	
	@GetMapping("list")
	public String list() {
		return "/board/list";
	}
	
	@GetMapping("cartList")
	public String cartList() {
		return "/board/cartList";
	}
	
	// qna 게시판 목록
	@GetMapping("qna/qnaBoard")
	public String qnaList(String pageNum,
			@RequestParam(name="field", defaultValue="") String field, 
			@RequestParam(name="word", defaultValue ="") String word,			
			Model model) {		
		int currentPage = pageNum == null ? 1 : Integer.parseInt(pageNum);
		int pageSize = 5;
		

		HashMap<String, Object> hm = new HashMap<>();
		hm.put("field", field);
		hm.put("word", word);
		hm.put("pageStart", (currentPage-1)*pageSize);
		hm.put("pageSize", pageSize);
		
		List<Qnaboard> list = boardService.qfindAll(hm);
		int count = boardService.getQnaBoardCnt(hm);
		PageVO page = new PageVO(count, currentPage, pageSize);
		
		model.addAttribute("qlist", list);
		model.addAttribute("count", count);
		model.addAttribute("page", page);
		model.addAttribute("field", field);
		model.addAttribute("word", word);
	
		return "/board/qna/qnaBoard";
	}
	
	// qna 작성 페이지
	@GetMapping("qna/qnaRegist")
	public String qnaRegist() {
		return "/board/qna/qnaRegist";
	}
	
	/**
	 *  qna 작성
	 * @param qnaboard
	 * @return
	 */
	@PostMapping("qRegist")
	public String qnaRegister(Qnaboard qnaboard) {				
		boardService.insertQnaBoard(qnaboard);
		return "redirect:/board/qna/qnaBoard";
	}
	
	// qna 수정 페이지
	@GetMapping("qna/qnaUpdate")
	public String qnaUpdate(@RequestParam("board_id") Long id, Model model) {
		Qnaboard qna=boardService.getQnaBoardDetail(id);
		model.addAttribute("qna", qna);
		return "/board/qna/qnaUpdate";
	}
	
	
	/**
	 * qna 비밀번호 확인 페이지
	 * @param qnaboard
	 * @param session
	 * @param model
	 * @return
	 */
	@PostMapping("qna/qnaPasswordConfim")
	public ResponseEntity<?> qnaPasswordConfim(Qnaboard qnaboard, HttpSession session,  Model model) {
		log.info("qnaboard  : {} ", qnaboard.toString());
				
		Qnaboard getQnaboard =boardService.getQnaBoardDetail(qnaboard.getBoard_id());
		boolean result=bCryptPasswordEncoder.matches(qnaboard.getPassword(), getQnaboard.getPassword());
		if(result) {
			//비밀번호가 맞다면 qnaboardKey 세션값에 Board_id 값 등록
			session.setAttribute("qnaboardKey", getQnaboard.getBoard_id());
		}		
		return ResponseEntity.status(HttpStatus.OK).body(result);
	}
	
	
	/**
	 * 최상의 작성자 확인 회원 아이디 값 반환처리 
	 * @param qnaboard
	 * @param session
	 * @param model
	 * @return
	 */
	@PostMapping("qna/boardConfirm")
	public ResponseEntity<?> boardConfirm(Qnaboard qnaboard, Authentication authentication,  Model model) {				
		Qnaboard getQnaboard =boardService.getQnaBoardDetail(qnaboard.getBoard_id());
		String member_id=boardService.getQnaBoardParentMemeberId(getQnaboard.getBoard_re_ref());
		log.info( "비밀게시글이면 작성자 확인  : {}, {}" , member_id , authentication.getName());		
		boolean result=false;
		if(member_id.equals(authentication.getName())){
			result=true;
		}
		return ResponseEntity.status(HttpStatus.OK).body(result);
	}
	
	
	
	// qna 수정
	@PostMapping("qUpdate")
	public String qnaUpdater(Qnaboard qnaboard) {
		boardService.updateQnaBoard(qnaboard);
		return "redirect:/board/qna/qnaBoard";
	}
	
	// qna 삭제
	@GetMapping("qnaDelete")
	public String qnaDelete(@RequestParam("board_id") Long id) {
		Qnaboard qnaboard = boardService.getQnaBoardDetail(id);
		boardService.deleteQnaBoard(qnaboard);
		return "redirect:/board/qna/qnaBoard";
	}
	
	// qna 상세 페이지
	@GetMapping("qna/qnaDetail")
	public String qnaDetail(@RequestParam("board_id") Long id, String pageNum,
			@RequestParam(name="field", defaultValue="") String field, 
			@RequestParam(name="word", defaultValue ="") String word,
			Authentication authentication,
			HttpSession session,
			Model model) {
		Qnaboard  qna= boardService.getQnaBoardDetail(id);
		if(qna==null)return "redirect:/";	 
		
		//1.로그인한 유저  : 접속자 권한 정보확인
		if(authentication!=null){		
	        PrincipalDetails principalDetails=(PrincipalDetails) authentication.getPrincipal();  
	        //2.관리자 계정이 아니면 다음을 진행 - 관리자는 통과
	        if(!principalDetails.getMember().getRole().equals("ROLE_ADMIN")) {
	    		
	        	//3.비밀게시글이면 작성자 확인
	    		if(qna.getPassword()!=null&&!qna.getPassword().equals("on")){	    			
	    			
	    			Qnaboard getQnaboard =boardService.getQnaBoardDetail(qna.getBoard_id());
	    			String member_id=boardService.getQnaBoardParentMemeberId(getQnaboard.getBoard_re_ref());
	    			log.info( "비밀게시글이면 작성자 확인  : {}, {}" , member_id , authentication.getName());			    	
	    			if(!member_id.equals(authentication.getName())){
	    				return "redirect:/";	
	    			}
	    	
	    		}	 	    		
	        }	        	        
		}else{
			
	    	//4.로그인 안한 유저 :
			if(qna.getPassword()!=null&&!qna.getPassword().equals("on")){	
				return "redirect:/";	   
			}
		}
		
		
		//답변이 달렸는지 확인 count
		int  getQnaBoardReplyCount=boardService.getQnaBoardReplyCount(qna.getBoard_re_ref());
		
		//qnaboardKey 값 초기화
		session.removeAttribute("qnaboardKey");
		
		model.addAttribute("qna", qna);
		
		model.addAttribute("getQnaBoardReplyCount", getQnaBoardReplyCount);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("field", field);
		model.addAttribute("word", word);
		return "/board/qna/qnaDetail";
	}
	
	// qna 답변 작성 페이지
	@GetMapping("qna/qnaReRegist/{id}")
	public String qnaReRegist(@PathVariable("id") Long id, Model model) {
		model.addAttribute("qnareinfo",  boardService.getQnaBoardDetail(id));
		
		System.out.println(boardService.getQnaBoardDetail(id).getBoard_re_ref());
		return "/board/qna/qnaReRegist";
	}
	
	// qna 답변 작성
	@PostMapping("qReRegist")
	public String qnaReRegister(Qnaboard qnaboard) {
		boardService.insertQnaBoardReply(qnaboard);
		boardService.updateQnaBoardReSeq(qnaboard);
		return "redirect:/board/qna/qnaBoard";
	}
	
}
