/* listinsert.jsp */
/* 등록 버튼 */
	$(".insert_btn").click(function(){
	
	  /* 등록내용 */
		 var formValues = $("form[id=listInsertForm]").serialize() ;
		 
	        $.ajax({
	            type : 'post',
	            url : '/todolist/listInsert',
	            data : formValues,
	            dataType : 'json',
	            error: function(xhr, status, error){
	            	
	            },
	            success : function(json){
	      		
	            }
	        });
	        
	        location.href="/main";
	});
	 
	/* 취소 버튼 */
	$("#cancelBtn").click(function(){
	    location.href="/todolist/list"
	});
	/* listinsert.jsp 끝 */
	