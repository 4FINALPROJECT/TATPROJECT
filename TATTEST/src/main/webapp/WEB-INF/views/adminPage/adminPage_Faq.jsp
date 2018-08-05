<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>게시판 관리 - FAQ || TAT 관리자</title>
	<c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
</head>
<body>
	<c:import url="common/adminPage_Header.jsp"></c:import>
	
	
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>FAQ</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}/admin/Main.tat">Admin </a>/</li>
								<li>FAQ</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		
		<section class="content left_sidebar">
			<div class="container">
				<div class="row sub_content">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="dividerHeading">
                    <h4><span>FAQ 목록</span></h4>
                </div>
                
            </div>
            <div class="col-lg-12 col-sm-9 ">
                <div class="panel-group accordion faqBoardList" id="accordion">
                    <!-- <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="faqQuestion" data-toggle="collapse" data-parent="#accordion" href="#collapse02">
                                   
                                    Morbi Congue Turpis Sollicitudin
                                </a>
                            </h4>
                        </div>
                        <div id="collapse02" class="panel-collapse collapse">
                            <div class="panel-body faqAnswer">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.</div>
                            <div class="col-lg-12 col-sm-3 setBtn">
                
           					</div> 
                        </div>
                    </div> -->
                </div>
            </div>
            
            
            

            <div class="col-sm-12 text-center">
						<ul class="pagination">
							
						</ul>
			</div>
				<div class="col-sm-12 text-center">
	               <input type="submit" class="btn btn-default btn-lg" onclick="createFaq()"  value="등록 ">
	            </div>

	                <div class="col-lg-12 col-md-12 col-sm-12 FaqFormPage">
	                    
	                </div>
	                
				</div>
			</div>
		</section>
		
	</section>
	
	<script>
	 window.onload = function(){
		 pageIndex(1);
		 pageBtn();
		 
	 }
		var showCount = 5;
		var btnCount = 5;
		var showDoubleCount = 5.0;
		var pageVal;
		
		
		function updateFaq(num){
			var faq_num = num;
			$('.FaqFormPage').children().remove();
			$.ajax({
				url : "${pageContext.request.contextPath}/admin/FaqSelectUpdateListAjax.tat",
				type : "post",
				dataType : 'json', 
				data : {"faq_num" : faq_num,},
				success : function(data){
					for(var idx in data){
					$('.FaqFormPage').append('<div class="dividerHeading"><h4><span>FAQ 수정</span></h4></div><form id="contactForm" action="" novalidate="novalidate">'+
				        	'<div class="row"><div class="form-group"><div class="col-md-2"><select id="subject" name="subject" class="form-control faqSelect" data-msg-required="Please enter the subject.">'+
				            '</select></div></div></div><div class="row"><div class="form-group"><div class="col-md-12">'+
				            '<input type="text" id="subject" name="subject" class="form-control updateQuestion" maxlength="100" data-msg-required="Please enter the subject." value="'+data[idx].faq_question+'" placeholder="Subject">'+
				            '</div></div></div><div class="row"><div class="form-group"><div class="col-md-12">'+
				            '<textarea id="message" class="form-control updateAnswer" name="message" rows="10" cols="50" data-msg-required="Please enter your message." maxlength="5000">'+data[idx].faq_answer+'</textarea>'+
				            '</div></div></div><div class="row"><div class="col-md-12"><input type="submit" class="btn btn-default btn-lg" onclick="updateBtn('+data[idx].faq_num+')"  value="수정하기"></div></div></form>');
					
					}
					pageSelect();
					
				},
				error: function(jqXHR, textStatus, errorThrown) {
					/* console.log(ajax.responseText); */
			        alert("에러발생 :  \n" + textStatus + " : " + errorThrown);}
			}); 
			
		}
		function updateBtn(num){
			/* console.log($('.faqSelect').val());
			console.log($('.updateQuestion').val());
			console.log($('.updateAnswer').val()); */
			var qccode = $('.faqSelect').val();
			var quest = $('.updateQuestion').val();
			var answer = $('.updateAnswer').val();
			
			$.ajax({
				url : "${pageContext.request.contextPath}/admin/updateFaqQuestionAjax.tat",
				type : "post",
				dataType : 'json',
				data : {"qccode" : $('.faqSelect').val(),
						"quest" : $('.updateQuestion').val(),
						"answer" : $('.updateAnswer').val(),
						"faq_num" : num
				},success : function(data){
					alert("등록이 완료되었습니다.");
				},error: function(jqXHR, textStatus, errorThrown) {
					/* console.log(jqXHR.responseText); */
			        alert("삐용삐용 에러발생 :  \n" + textStatus + " : " + errorThrown);}
			});
		}
		function deleteBtn(num){
			$.ajax({
				url : "${pageContext.request.contextPath}/admin/deleteFaqQuestionAjax.tat",
				type : "post",
				dataType : 'json',
				data : {"faq_num" : num
				},success : function(data){
					alert("삭제가 되었습니다.");
				},error: function(jqXHR, textStatus, errorThrown) {
					/* console.log(jqXHR.responseText); */
			        alert("삐용삐용 에러발생 :  \n" + textStatus + " : " + errorThrown);}
			});
		}
		function createFaq(){
			$('.FaqFormPage').empty();
			$('.FaqFormPage').append('<div class="dividerHeading"><h4><span>FAQ 등록</span></h4></div><form id="contactForm" action="" novalidate="novalidate">'+
        	'<div class="row"><div class="form-group"><div class="col-md-2"><select id="subject" name="subject" class="form-control faqSelect" data-msg-required="Please enter the subject.">'+
            '</select></div></div></div><div class="row"><div class="form-group"><div class="col-md-12">'+
            '<input type="text" id="subject" name="subject" class="form-control insertQuestion" maxlength="100" data-msg-required="Please enter the subject." value="" placeholder="Subject">'+
            '</div></div></div><div class="row"><div class="form-group"><div class="col-md-12">'+
            '<textarea id="message" class="form-control insertAnswer" name="message" rows="10" cols="50" data-msg-required="Please enter your message." maxlength="5000" placeholder="Message"></textarea>'+
            '</div></div></div><div class="row"><div class="col-md-12"><input type="submit" class="btn btn-default btn-lg" onclick="createBtn()"  value="등록하기"></div></div></form>');
			pageSelect();
		}
		function pageSelect(){
			$.ajax({
				url : "${pageContext.request.contextPath}/admin/FaqSelectAjax.tat",
				type : "post",
				dataType : 'json',
				success : function(data){
					if(data.length==0){$('.faqSelect').append('<option value="">선택</option>')}
					for(var idx in data){
						$('.faqSelect').append('<option value="'+data[idx].qc_code+'">'+data[idx].qc_name+'</option');
						

					}
				},error: function(jqXHR, textStatus, errorThrown) {
					/* console.log(ajax.responseText); */
			        alert("삐용삐용 에러발생 :  \n" + textStatus + " : " + errorThrown);}
			});
			
		}
		function createBtn(){
			alert("??");
			/* console.log($('.faqSelect').val());
			console.log($('.insertQuestion').val());
			console.log($('.insertAnswer').val()); */
			var qccode = $('.faqSelect').val();
			var quest = $('.insertQuestion').val();
			var answer = $('.insertAnswer').val();
			
			$.ajax({
				url : "${pageContext.request.contextPath}/admin/insertFaqQuestionAjax.tat",
				type : "post",
				dataType : 'json',
				data : {"qccode" : $('.faqSelect').val(),
						"quest" : $('.insertQuestion').val(),
						"answer" : $('.insertAnswer').val()	
				},success : function(data){
					alert("등록이 완료되었습니다.");
				},error: function(jqXHR, textStatus, errorThrown) {
					/* console.log(jqXHR.responseText); */
			        alert("삐용삐용 에러발생 :  \n" + textStatus + " : " + errorThrown);}
			})
		}

		function pageNextFirstBtn(){
			$('.pagination').append('<li class="pageNextBtn"><a onclick="pageNextBtn(1)">››</a></li>')
		}
		 function pageNextBtn(i){
			
			 var num = Math.ceil(((showCount*btnCount*i)+1)/showDoubleCount);
			 pageIndex(num);
			 pageNextBtnCreate(i,num);
		}; 
		
		function pageBtnCreate(total){
			$('.pageIndex').empty();
			var num; 
			if(total%showDoubleCount != 0){
				num = Math.ceil(total/showCount);
			}
			else{
			num = Math.ceil(total/showCount);
			} 
			if(num > 5){
				num = 5
				for(var i= 1 ; i<=num;i++ ){ 
					$('.pagination').append('<li class="pageIndex'+i+'"><a onclick="pageIndex('+i+')";>'+i+'</a></li>');
				}
			}else{
				for(var i= 1 ; i<=num;i++ ){ 
				$('.pagination').append('<li class="pageIndex'+i+'"><a onclick="pageIndex('+i+')";>'+i+'</a></li>');
				};
			}	
		};
		
		function pageBtn(){
			$.ajax({
				url : "${pageContext.request.contextPath}/admin/FaqTotalAjax.tat",
				type : "post",
				dataType : 'json', 		
				success : function(data){
					var total = data;
					var count = Math.ceil(total/showDoubleCount);
					pageBtnCreate(total);
					if(count>btnCount){pageNextFirstBtn();}
				},error: function(jqXHR, textStatus, errorThrown) {
					/* console.log(ajax.responseText); */
			        alert("삐용삐용 에러발생 :  \n" + textStatus + " : " + errorThrown);}
			}); 
		};
		
		
		
		function pageIndex(pageStartNum){
			
			var start = pageStartNum-1;
			 $('.faqBoardList').empty();
			 $('.setBtn').empty();
			 $.ajax({
				url : "${pageContext.request.contextPath}/admin/FaqAjax.tat",
				type : "post",
				dataType : 'json', 
				data : {"start" : start,},
				success : function(data){createPageList(data);},
				error: function(jqXHR, textStatus, errorThrown) {
					/* console.log(ajax.responseText); */
			        alert("에러발생 :  \n" + textStatus + " : " + errorThrown);}
			}); 
		};
		function createPageList(data){
			/* console.log("ajax 리스트 이름 확인 : "+data.FaqList);
			console.log("ajax data 전체 확인 : "+data); */
			var count = 0;
			for(var idx in data){
				count++;
				/* console.log("데이터 확인 :"+  dateFormat((data[idx].enroll_date), 'mm/dd/yy')); */
			$('.faqBoardList').append(
			'<div class="panel panel-default"><div class="panel-heading"><h4 class="panel-title">'+
			'<a class="faqQuestion" data-toggle="collapse" data-parent="#accordion" href="#collapse'+data[idx].faq_num+'">'+
			data[idx].faq_question+'</a></h4></div><div id="collapse'+data[idx].faq_num+'" class="panel-collapse collapse">'+
			'<div class="panel-body">'+data[idx].faq_answer+'</div><input type="submit" class="btn btn-default btn-lg" onclick="updateFaq('+data[idx].faq_num+')"  value="수정">'+
            '<input type="submit" class="btn btn-default btn-lg" onclick="deleteBtn('+data[idx].faq_num+')"  value="삭제"></div></div></div>');
				/* $('.setBtn').append('<div class="col-lg-12 col-sm-3 ">'+
            '<input type="submit" class="btn btn-default btn-lg" onclick="insertFaq()"  value="수정">'+
            '<input type="submit" class="btn btn-default btn-lg" onclick="insertFaq()"  value="삭제"></div>');*/
			}; 
		};
			
			
		 function pageNextBtnCreate(num){
			 var start = (showDoubleCount * btnCount * num) + 1;
			 $.ajax({
					url : "${pageContext.request.contextPath}/admin/FaqTotalCountAjax.tat",
					type : "post",
					dataType : 'json',
					data: {"start" : start},
					success : function(data){
						  $('.pagination').empty();
						  var total = Math.ceil(data/showDoubleCount);
						  var nextFlag = false;
						  if(total > btnCount){total = btnCount; nextFlag = true;}
						  var prevBtn = num-1;
						  if(prevBtn >= 0){
							 $('.pagination').append('<li class="pagePreBtn"><a onclick="pageNextBtn('+prevBtn+')";>‹‹</a></li>');
						  }
						  var start = num*btnCount;
						  for(var i = 1 ;i<=total ;i++){
							var btnIndex = start+i;
							$('.pagination').append('<li class="pageIndex'+btnIndex+'"><a onclick="pageIndex('+btnIndex+')";>'+btnIndex+'</a></li>');
						  }  
						  var nextBtn = num+1;
						  if(nextFlag){  
						 	$('.pagination').append('<li class="pageNextBtn"><a onclick="pageNextBtn('+nextBtn+')";>››</a></li>');
						  }
					},error: function(jqXHR, textStatus, errorThrown) {
						/* console.log(ajax.responseText); */
				        alert("삐용삐용 에러발생 :  \n" + textStatus + " : " + errorThrown);}
				}); 
			  
		};	
	</script>

	<c:import url="common/adminPage_Footer.jsp"></c:import>
	<c:import url="../common/JS.jsp"></c:import>
</body>
</html>