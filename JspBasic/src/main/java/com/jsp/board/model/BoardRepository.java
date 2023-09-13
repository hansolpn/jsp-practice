package com.jsp.board.model;

import java.util.ArrayList;
import java.util.List;

// 우리가 DB을 안배워서;
//DB 역할을 대신할 List을 하나 선언해서 BoardVO 객체를 저장하겠습니다.
public class BoardRepository {

	// 외부에서 이 리스트에 직접 접근하지 못하게 하겠습니다.
	private static List<BoardVO> boardList = new ArrayList<BoardVO>();
	private static BoardRepository br = new BoardRepository();
	
	private BoardRepository() {}
	
	public static BoardRepository getInstance() {
		return br;
	}
	
	// 게시들 등록 메서드
	public void regist(BoardVO vo) {
		boardList.add(vo);
	}
	
	// 전체 게시물(boardList)을 담고 있는 리스트를 리턴
	public List<BoardVO> getList() {
		return boardList;
	}
	
	
	
}
