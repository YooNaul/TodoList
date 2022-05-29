package com.todolist.mapper;

import com.todolist.model.MemberVO;

public interface MemberMapper {

	//회원가입
	public void memberJoin(MemberVO member);
	
	public int idCheck(String memberId);
	
    /* 로그인 */
    public MemberVO memberLogin(MemberVO member);
}
