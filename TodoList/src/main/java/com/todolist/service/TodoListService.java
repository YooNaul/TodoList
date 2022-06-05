package com.todolist.service;

import java.util.List;

import com.todolist.model.TodoListVO;

public interface TodoListService {

	//목록보기
	public List<TodoListVO> list_select(TodoListVO list) throws Exception;
	
	//할일 등록
    public void list_insert(TodoListVO list) throws Exception;
    
    //시간지난거 실패처리
    public void list_timeout() throws Exception;
    
    //성공버튼 클릭
    public void list_sucssess(int idx) throws Exception;
    
    //포기버튼 클릭
    public void list_giveup(int idx) throws Exception;
    
    //할일 수정
    public void list_update(TodoListVO list) throws Exception;
    
    public TodoListVO getPage(int idx) throws Exception;
    
    public void deleteMemberList(String id) throws Exception;
    
    public int mypageTodoChallInfo(String id) throws Exception;
    
    public int mypageTodoFailInfo(String id) throws Exception;
	
}
