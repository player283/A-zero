package com.sam.zero.service;

import java.util.HashMap;
import java.util.List;

import com.sam.zero.domain.Qnaboard;

public interface BoardService {
	
	public Long getQnaBoardCnt(Qnaboard qnaboard);
	
	public List<Qnaboard> getQnaBoardList();
	public Qnaboard getQnaBoardDetail(Long board_id);
	public void insertQnaBoard(Qnaboard qnaboard);
	public Long deleteQnaBoard(Qnaboard qnaboard);
	public void updateQnaBoard(Qnaboard qnaboard);
	
	public Qnaboard getQnaBoardReply(Qnaboard qnaboard);
	public void updateQnaBoardReSeq(Qnaboard qnaboard);
	public void insertQnaBoardReply(Qnaboard qnaboard);
	
	// qna 페이징, 검색
	public List<Qnaboard> qfindPage(HashMap<String, Object> hm);
	public List<Qnaboard> qfindAll(HashMap<String, Object> hm);
	public int getQnaBoardCnt(HashMap<String, Object> hm);
	public List<Qnaboard> getmyQnaBoardList(String member_id);

	public int getQnaBoardReplyCount(Long board_re_ref);

	public String getQnaBoardParentMemeberId(Long board_re_ref);
}
