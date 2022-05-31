package com.vam.mapper;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.todolist.mapper.TodoListMapper;
import com.todolist.model.TodoListVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TodoListMapperTests {
	
	
	 	@Autowired
	    private TodoListMapper mapper;
	    
//	    /* 작가 등록 테스트 */
//	    @Test
//	    public void authorEnroll() throws Exception{
//	        
//	        TodoListVO author = new TodoListVO();
//	        
//	        author.setDetail("챌린지 도저언2!");
//	        author.setChallStatus(0);
//	        
//	        mapper.list_insert(author);
//	        
//	    }    
	 	
	 	
	    

}
