package com.todolist.controller;

import java.sql.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.todolist.model.TodoListVO;
import com.todolist.service.TodoListService;
import com.todolist.service.TodoListServiceImpl;



@Controller
@RequestMapping(value = "/todolist")
public class TodoListController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	private SqlSession sqlSession;
	
	@Autowired
	private TodoListService todolistservice;
	
	//할일 리스트뽑아주기
	@RequestMapping(value="list", method=RequestMethod.GET)
	public void todoList(TodoListVO list, Model model, HttpServletRequest request, HttpSession session) throws Exception {
		
		String id = (String)session.getAttribute("id");
		
		//System.out.println(id);
		
		list.setChallStatus(1);
		list.setId(id);
				
		List lists = todolistservice.list_select(list);
		model.addAttribute("list", lists);

	}
	
	//할일 리스트뽑아주기
	@RequestMapping(value="listChall", method=RequestMethod.GET)
	public void todoListChall(TodoListVO list, Model model, HttpServletRequest request, HttpSession session) throws Exception {
		
		String id = (String)session.getAttribute("id");
		
		System.out.println(id);
		
		list.setChallStatus(0);
		list.setId(id);
				
		List lists = todolistservice.list_select(list);
		
		todolistservice.list_timeout();
		
		model.addAttribute("list", lists);

	}
	
	@RequestMapping(value="listInsert", method = RequestMethod.GET)
	public void todoList_InsertPage() throws Exception {
		
		logger.info("할일 등록 메서드 진입");
	}
	
	//할일 등록
	@RequestMapping(value="/listInsert", method = RequestMethod.POST)
    public String todoList_Insert(TodoListVO list, RedirectAttributes rttr) throws Exception{
		
		logger.info("/listInsert 진입");
		
		todolistservice.list_insert(list);
		
		return "redirect:/todolist/list";
 
    }
	
	@RequestMapping(value="/success", method = RequestMethod.GET)
	public String success(@RequestParam("idx") int idx) throws Exception{
		logger.info("success 페이지 진입");
		
		todolistservice.list_sucssess(idx);
		
		return "redirect:/todolist/list";
		
		
	}
	
	@RequestMapping(value="/giveup", method = RequestMethod.GET)
	public String giveup(@RequestParam("idx") int idx) throws Exception{
		logger.info("giveup 페이지 진입");
		
		todolistservice.list_giveup(idx);
		
		return "redirect:/todolist/list";
		
		
	}

	
}
