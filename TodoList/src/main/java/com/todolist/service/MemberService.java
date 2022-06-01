package com.todolist.service;

import com.todolist.model.MemberVO;

public interface MemberService {

	//회원가입
	public void memberJoin(MemberVO member) throws Exception;
	
	//아이디 중복체크
	public int idCheck(String memberId) throws Exception;
	
    //로그인
    public MemberVO memberLogin(MemberVO member) throws Exception;
    
    //회원정보수정
    public void editMember(MemberVO member) throws Exception;
    
    //회원탈퇴
    public void deleteMember(MemberVO member) throws Exception;
    
    //일반 할일 성공시 랭킹 증가
    public void listSucssessRanking(String memberId) throws Exception;
    
}
