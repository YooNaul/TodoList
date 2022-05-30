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
	
	
}
