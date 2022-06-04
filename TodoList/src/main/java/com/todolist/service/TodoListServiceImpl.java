package com.todolist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todolist.mapper.TodoListMapper;
import com.todolist.model.TodoListVO;

@Service
public class TodoListServiceImpl implements TodoListService {
	
	@Autowired
	TodoListMapper todolistmapper;
	
	@Override
	public List<TodoListVO> list_select(TodoListVO list) throws Exception {
		
		return todolistmapper.list_select(list);
	}
	
	@Override
	public void list_insert(TodoListVO list) throws Exception {

		todolistmapper.list_insert(list);
		
	}
	
	@Override
	public void list_timeout() throws Exception {
		
		todolistmapper.list_timeout();
		
	}
	
	@Override
	public void list_sucssess(int idx) throws Exception {
		
		todolistmapper.list_sucssess(idx);
		
	}
	
	@Override
	public void list_giveup(int idx) throws Exception {
		
		todolistmapper.list_giveup(idx);
		
	}
	
	@Override
	public void list_update(TodoListVO list) throws Exception {

		todolistmapper.list_update(list);
	}
	
	@Override
	public TodoListVO getPage(int idx) throws Exception {
		return todolistmapper.getPage(idx);
	}
	
	@Override
	public void deleteMemberList(String id) throws Exception {
		todolistmapper.deleteMemberList(id);
		
	}
	
	
}
