package com.todolist.controller;

import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.todolist.model.MemberVO;
import com.todolist.model.TodoListVO;
import com.todolist.service.MemberService;
import com.todolist.service.TodoListService;

@Controller
@RequestMapping(value = "/member")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService memberservice;
	
	@Autowired
	private TodoListService todolistservice;

	@Autowired
	private JavaMailSender mailSender;

	// 회원가입 페이지 이동
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void loginGET() {

		logger.info("회원가입 페이지 진입");

	}

	// 회원가입
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPOST(MemberVO member) throws Exception {

		logger.info("/join 진입");

		// 회원가입 서비스 실행
		memberservice.memberJoin(member);

		logger.info("join Service 성공");

		return "redirect:/main";

	}

	// 로그인 페이지 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void joinGET() {

		logger.info("로그인 페이지 진입");

	}

	// 아이디 중복 검사
	@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
	@ResponseBody
	public String memberIdChkPOST(String memberId) throws Exception {

		// logger.info("memberIdChk() 진입");

		logger.info("memberIdChk() 진입");

		int result = memberservice.idCheck(memberId);

		logger.info("결과값 = " + result);

		if (result != 0) {

			return "fail"; // 중복 아이디가 존재

		} else {

			return "success"; // 중복 아이디 x

		}

	} // memberIdChkPOST() 종료

	/* 이메일 인증 */
	@RequestMapping(value = "/mailCheck", method = RequestMethod.GET)
	@ResponseBody
	public String mailCheckGET(String email) throws Exception {

		/* 뷰(View)로부터 넘어온 데이터 확인 */
		logger.info("이메일 데이터 전송 확인");
		logger.info("인증번호 : " + email);

		/* 인증번호(난수) 생성 */
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		logger.info("인증번호 " + checkNum);

		/* 이메일 보내기 */
		String setFrom = "kgsa0405@naver.com";
		String toMail = email;
		String title = "회원가입 인증 이메일 입니다.";
		String content = "홈페이지를 방문해주셔서 감사합니다." + "<br><br>" + "인증 번호는 " + checkNum + "입니다." + "<br>"
				+ "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";

		
	    try {
	  
	    MimeMessage message = mailSender.createMimeMessage(); 
	    MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
	    helper.setFrom(setFrom); 
	    helper.setTo(toMail); 
	    helper.setSubject(title);
	    helper.setText(content,true); 
	    mailSender.send(message);
	 
	    }catch(Exception e) { e.printStackTrace(); }
		 

		String num = Integer.toString(checkNum);

		return num;

	}
	

    /* 로그인 */
    @RequestMapping(value="login.do", method=RequestMethod.POST)
    public String loginPOST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception{
        
		
		System.out.println("login 메서드 진입"); 
		System.out.println("전달된 데이터 : " + member);
		
		HttpSession session = request.getSession();
		MemberVO lvo = memberservice.memberLogin(member);
		
		
        

		 
        if(lvo == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우
            
            int result = 0;
            rttr.addFlashAttribute("result", result);
            return "redirect:/member/login";
            
        }
        http://localhost:8080/member/logout.do
        session.setAttribute("member", lvo);             // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
        session.setAttribute("id", member.getId());
        session.setAttribute("name", member.getName());
        session.setAttribute("sex", member.getSex());
        session.setAttribute("ranking", member.getRanking());
        session.setAttribute("pass", member.getPass());
        session.setAttribute("email", member.getEmail());
        session.setAttribute("joinDate", member.getJoinDate());
        
        	
        System.out.println("lvo값:"+lvo);
        
        return "redirect:/main";
    }
    
    
    /* 비동기방식 로그아웃 메서드 */
    @RequestMapping(value="logout.do", method=RequestMethod.POST)
    @ResponseBody
    public void logoutPOST(HttpServletRequest request) throws Exception{
        
        logger.info("비동기 로그아웃 메서드 진입");
        
        HttpSession session = request.getSession();
        
        session.invalidate();
        
    }
    
    /* 마이페이지 */
	 @RequestMapping(value="mypage", method=RequestMethod.GET)
	 public void mypage(HttpSession session, Model model, TodoListVO list) throws Exception {
		 
		  logger.info("마이페이지 페이지 진입");
		  
		  String id = (String)session.getAttribute("id");
		  
		  session.getAttribute("member");
		  
		  session.getAttribute("id");
		  
		  list.setId(id);
		  
		  List lists = todolistservice.list_select(list);
		  model.addAttribute("list", lists);
	  }
	 
	 //회원 정보 수정 페이지 진입
	 @RequestMapping(value="editMember", method = RequestMethod.GET)
	 public void editMember(){
		 
		 logger.info("회원정보 수정 작성 진입");
	 }
	 
	//회원 정보 수정 클릭
	@RequestMapping(value="/editMember.do", method = RequestMethod.POST)
	public String editMemberUpdate(MemberVO member, HttpSession session, HttpServletRequest request) throws Exception {
		 
		 logger.info("회원정보 수정 폼 보내기");
		 
		 memberservice.editMember(member);
		 
		 session.invalidate();
		 
		 return "redirect:/main";
		 
	}
	
	//회원 탈퇴
	@RequestMapping(value="deleteMember", method= RequestMethod.GET)
	public void deleteMember() throws Exception{	
		logger.info("회원탈퇴 페이지 진입");
	}
	
	//회원탈퇴
	@RequestMapping(value="/deleteMember", method= RequestMethod.POST)
	public String deleteMemberPOST(HttpSession session, MemberVO vo, RedirectAttributes rttr) throws Exception{
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		String origPass = member.getPass(); 
		String inputPass = vo.getPass();
		
		if(!(inputPass.equals(origPass))) {
			rttr.addFlashAttribute("msg",false);
			return "redirect:/member/deleteMember";
		}
		
		memberservice.deleteMember(member);
		session.setAttribute("pass", null);
		
		session.invalidate();
		
		return "redirect:/main";
	}
	
	
	 

}
