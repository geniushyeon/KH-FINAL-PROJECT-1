package kr.or.eutchapedia.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.eutchapedia.board.entity.Faq;
import kr.or.eutchapedia.board.entity.QnaVO;

@Mapper
public interface QnaDAO {
	//게시물 리스트 조회
	public List<QnaVO> selectBoardList(@Param("vo")QnaVO vo,@Param("memberEmail")String memberEmail);
	//게시물 작성
	public int insertBoard(QnaVO vo);
	//게시물 수정
	public void updateBoard(QnaVO vo);
	//게시물 삭제
	public void deleteBoard(QnaVO vo);
	//게시글 조회
	public QnaVO selectBoardByCode(QnaVO vo);
	
	QnaVO detail(@Param("qnaNo")long qnaNo);
	
	public int reply(QnaVO vo);
	
	//수정
	void update(QnaVO vo);

}
