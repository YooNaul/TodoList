package com.vam.mapper;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.todolist.controller.TodoListController;
import com.todolist.mapper.TodoListMapper;
import com.todolist.model.MemberVO;
import com.todolist.model.TodoListVO;
import com.todolist.service.MemberService;
import com.todolist.service.TodoListService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TodoListServiceTests {
	
	private static final Logger logger = LoggerFactory.getLogger(TodoListServiceTests.class);
	
    @Autowired
    private TodoListService service;
    
    @Autowired
    private TodoListMapper mapper;
    
//    @Test
//    public void authorEnrollTest() throws Exception {
// 
//        TodoListVO list = new TodoListVO();
//        
//        list.setDetail("챌린지 도저언1232!");
//        list.setChallStatus(0);
//        
//        service.list_insert(list);
//        
//    }
    
//    @Test
//    public void memberLogin() throws Exception{
//        
//    	TodoListVO list = new TodoListVO();
//        
//        /* 올바른 아이디 비번 입력경우 */
//    	list.setId("test");
//        
//        /* 올바른 않은 아이디 비번 입력경우 */
//        //member.setId("test1123");
//        //member.setPass("test1321321");
//        
//    	List<TodoListVO> lists = mapper.list_select(list);
//    	
//    	for(int i = 0; i < lists.size() ; i++) {
//    		
//    		System.out.println("결과 값 : "+ i + "......." + lists.get(i));
//    	}
//        
//    }

//    @Test
//    public void list_timeout() throws Exception{
//    	
//    	service.list_timeout();
//    }
////    
//    @Test
//    public void testUpdate() throws Exception {
//    	
//    	TodoListVO list = new TodoListVO();
//    	list.setDetail("수정완료!");
//    	list.setComplDate("2099-10-10 10:10:10");
//    	list.setId("test");
//    	list.setIdx(1);
//    	
//    	service.list_update(list);
//    	
//    	
//    }
//    
//    	@Test 
//    	public void testGetPage() {
//    		int bno = 8;
//    		
//    		logger.info(""+ mapper.getPage(bno));
//    	}
//    @Test
//    public void testMypage() {
//    	try {
//    		
//    		String aaa = "test";
//    		
//    		int lists = service.mypageTodoInfo(aaa);
//			
//    		logger.info("니 값 : "+service.mypageTodoInfo(aaa));
//    	
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//    }
    
}
    

