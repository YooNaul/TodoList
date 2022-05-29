package com.todolist.service;

import java.util.List;

import com.todolist.model.TodoListVO;

public interface TodoListService {

	//목록보기
	public List<TodoListVO> list_select(TodoListVO list) throws Exception;
	
	//할일 등록
    public void list_insert(TodoListVO list) throws Exception;
	
}
