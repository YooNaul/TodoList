package com.todolist.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todolist.mapper.MemberMapper;
import com.todolist.model.MemberVO;


@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper membermapper;

	@Override
	public void memberJoin(MemberVO member) throws Exception {
		
		membermapper.memberJoin(member);
		
	}
	@Override
	public int idCheck(String memberId) throws Exception {
		
		return membermapper.idCheck(memberId);
	}

    /* 로그인 */
    @Override
    public MemberVO memberLogin(MemberVO member) throws Exception {
        
        return membermapper.memberLogin(member);
    }
    
    //정보수정
    @Override
    public void editMember(MemberVO member) throws Exception {

    	membermapper.editMember(member);
    }
    
    //탈퇴
    @Override
    public void deleteMember(MemberVO member) throws Exception {
    	membermapper.deleteMember(member);
    	
    }
 
}
