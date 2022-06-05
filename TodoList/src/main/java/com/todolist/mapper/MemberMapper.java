package com.todolist.mapper;

import com.todolist.model.MemberVO;

public interface MemberMapper {

	//회원가입
	public void memberJoin(MemberVO member);
	
	//아이디중복체크
	public int idCheck(String memberId);
	
    /* 로그인 */
    public MemberVO memberLogin(MemberVO member);
    
    //회원정보수정
    public void editMember(MemberVO member);
    
    //탈퇴
    public void deleteMember(MemberVO member);
    
    //일반 할일 성공시 랭킹 증가
    public int listSucssessRanking(String memberId);
    
}
