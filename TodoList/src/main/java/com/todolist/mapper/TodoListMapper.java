package com.todolist.mapper;

import java.util.List;

import com.todolist.model.TodoListVO;

public interface TodoListMapper {

	public List<TodoListVO> list_select(TodoListVO list);
	
	public void list_insert(TodoListVO list);
	
	public void list_timeout();
	
	public void list_sucssess(int idx);
	
	public void list_giveup(int idx);
	
	public void list_update(TodoListVO list);
	

}
