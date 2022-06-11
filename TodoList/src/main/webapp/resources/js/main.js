$(document).ready(function(){
    /* gnb_area 로그아웃 버튼 작동 */
    $("#gnb_logout_button").click(function(){
        //alert("로그아웃 버튼 테스트");
        $.ajax({
        	type:"POST",
        	url:"/member/logout.do",
        	success:function(data){
        		//alert("로그아웃 성공");
        		document.location.reload();
        	}
        });
    });
  	
    /* 초기페이지를 todolist/list.jsp로드 */
    $(".contents").load('/todolist/list');
    $(".page-title").html("메인");
    $(".header-contents i").addClass("fi-rr-home");
   
    /* 버튼클릭시 페이지를 content박스에 로드 */
    $(".nav-bar ul li").click(function(){
     	var $currentPage = $(this).index();	
     	var $contents = $(".contents");
     	var $pageTitle = $(".page-title");
     	var $pageIcon = $(".header-contents i");
     	 $(".nav-bar ul li i").removeClass("on");
     	$(this).find("i").addClass("on");
     	$pageIcon.removeClass();
     
     	
    	switch($currentPage){
    	case 0 :
    		$contents.load("/todolist/list");
    		$pageTitle.html("메인");
    		$pageIcon.addClass("fi fi-rr-home");
    		break;
    	case 1 :
    		$contents.load("/todolist/listChall");
    		$pageTitle.html("나의 챌린지");
    		$pageIcon.addClass("fi fi-rr-trophy");
    		break;
    	case 2 :
    		$(".list-up").addClass("on");
    		$(".list-up").load("/todolist/listInsert");
    		break;
    	case 3 :
    		$contents.load("/member/mypage");
    		$pageTitle.html("마이페이지");
    		$pageIcon.addClass("fi fi-rr-user-add");
    		break;
    	case 4 :
    		$contents.load("/more");
    		$pageTitle.html("더보기");
    		$pageIcon.addClass("fi fi-rr-user-add");
    		break;
    	}	
    	  
    })
    /* 리스트업 버튼 클릭시 배경색 어둡게 */
   $(".list-up-btn").click(function(){
	if($(".list-up").hasClass("on")){
		$("#root").addClass("on");
	}
	})
        
    /* 일반,챌린지 모드 폼값 데이터변경 */    
   	let check = $("input[type='checkbox']");
	check.click(function(){
		$("p").toggle();
		$(this).toggleClass("on");
		if($(this).hasClass("on")) {
			challVal = 0;
			$("#challStatus").val("0").prop("selected", true);
		} else {
			challVal = 1;
			$("#challStatus").val("1").prop("selected", true);
		}
	});
	
	/* 선택날짜 오늘날짜로 제한 */
	let dateInput = document.querySelector("#daySelector");
	// Date string 형식
	let now = new Date();
	let today = new Date().toISOString().substring(0,10);	
	dateInput.setAttribute("min", today);    
	
	/* 수정버튼 클릭 */
	$(".mod_btn").click(function(){
	$ModBox = $(".mod_box");
	$currentModBox = $(this).parent().siblings(".mod_box");
	$ModBox.removeClass("on");
	$currentModBox.addClass("on");
	});

	$(".close_mod").click(function(){
	$(".mod_box").removeClass("on");
	});
	
	
	
	
	
	 
})