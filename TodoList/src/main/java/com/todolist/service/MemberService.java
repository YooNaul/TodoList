package com.todolist.service;

import com.todolist.model.MemberVO;

public interface MemberService {

	//회원가입
	public void memberJoin(MemberVO member) throws Exception;

	public int idCheck(String memberId) throws Exception;
	
    /* 로그인 */
    public MemberVO memberLogin(MemberVO member) throws Exception;
}
