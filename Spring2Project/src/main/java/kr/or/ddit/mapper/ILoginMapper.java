package kr.or.ddit.mapper;

import kr.or.ddit.vo.notice.NoticeMemberVO;

public interface ILoginMapper {

	public NoticeMemberVO loginCheck(NoticeMemberVO member);

	public NoticeMemberVO idCheck(String memId);

	public int signup(NoticeMemberVO memberVO);

	public void signupAuth(int memNo);

	public String findId(NoticeMemberVO member);

	public String findPw(NoticeMemberVO member);

	public NoticeMemberVO readByUserId(String username);


}
