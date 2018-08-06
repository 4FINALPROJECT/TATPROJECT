<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>템플릿 관리 || TAT 관리자</title>
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
                     <h2>Template</h2>
                  </div>
                  <nav id="breadcrumbs">
                     <ul>
                        <li><a href="${pageContext.request.contextPath}/admin/Main.tat">Admin </a>/</li>
                        <li>Template</li>
                     </ul>
                  </nav>
               </div>
            </div>
         </div>
      </section>
      
      <section class="content blog">
         <div class="container">
            <div class="row">
               <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                  <div class="blog_medium templateList">
                     <%-- <article class="post">
                        <div class="post_date">
                           <span class="day">28</span>
                           <span class="month">Nov</span>
                        </div>
                        <figure class="post_img">
                           <a href="#">
                              <img src="${pageContext.request.contextPath}/resources/images/blog/blog_medium_1.png" alt="blog post">
                           </a>
                        </figure>
                        <div class="post_content">
                           <div class="post_meta">
                              <h2>
                                 <a href="#">perferendis dolor asperio</a>
                              </h2>
                              <div class="metaInfo">
                                 <span><i class="fa fa-user"></i> By <a href="#">Louis</a> </span>
                                 <span><i class="fa fa-comments"></i> <a href="#">12 Comments</a></span>
                              </div>
                           </div>
                           <p>Lorem ipsum dolor sit amet, consectetur adip, sed do eiusmod tempor incididunt  ut aut reiciendise voluptat maiores alias consequaturs aut perferendis doloribus asperiores ut labore.</p>
                           <a class="btn btn-small btn-default" href="#">Read More</a>
                           
                        </div>
                     </article> --%>
                     
                     
                     
                     
                  </div>
                  <div class="col-lg-12 col-md-12 col-sm-12">
                     <ul class="pagination pull-left mrgt-0">
                        
                     </ul>
                  </div>
                  
               </div>

               <!--Sidebar Widget-->
               <!-- <div class="col-xs-12 col-md-4 col-lg-4 col-sm-4">
                  <div class="sidebar">
                     <div class="widget widget_search">
                        <div class="site-search-area">
                           <form method="get" id="site-searchform" action="#">
                              <div>
                                 <input class="input-text" name="s" id="s" placeholder="Enter Search keywords..." type="text" />
                                 <input id="searchsubmit" value="Search" type="submit" />
                              </div>
                           </form>
                        </div>end site search
                     </div>
                     
                     <div class="widget widget_categories">
                        <div class="widget_title">
                           <h4><span>Categories</span></h4>
                           </div>
                        <ul class="arrows_list list_style">
                           <li><a href="#"> Grapic Design (10)</a></li>
                           <li><a href="#"> Web Design & Development (25)</a></li>
                           <li><a href="#"> Photography (29)</a></li>
                           <li><a href="#"> Custom Illustrations (19)</a></li>
                           <li><a href="#"> Wordpress Themes(38)</a></li>
                           <li><a href="#"> Videography (33)</a></li>
                        </ul>
                     </div>
                     
                            <div class="widget widget_tab">
                                <div class="velocity-tab sidebar-tab">
                                    <ul  class="nav nav-tabs">
                                        <li class="active"><a href="#Popular" data-toggle="tab">Popular</a></li>
                                        <li class=""><a href="#Recent" data-toggle="tab">Recent</a></li>
                                        <li class="last-tab"><a href="#Comment" data-toggle="tab"><i class="fa fa-comments-o"></i></a></li>
                                    </ul>

                                    <div  class="tab-content clearfix">
                                        <div class="tab-pane fade active in" id="Popular">
                                            <ul class="recent_tab_list">
                                                <li>
                                                    <span><a href="#"><img src="images/content/recent_1.png" alt="" /></a></span>
                                                    <a href="#">Publishing packag esanse web page editos</a>
                                                    <i>October 09, 2015</i>
                                                </li>
                                                <li>
                                                    <span><a href="#"><img src="images/content/recent_2.png" alt="" /></a></span>
                                                    <a href="#">Sublishing packag esanse web page editos</a>
                                                    <i>October 08, 2015</i>
                                                </li>
                                                <li class="last-tab">
                                                    <span><a href="#"><img src="images/content/recent_3.png" alt="" /></a></span>
                                                    <a href="#">Mublishing packag esanse web page editos</a>
                                                    <i>October 07, 2015</i>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="tab-pane fade" id="Recent">
                                            <ul class="recent_tab_list">
                                                <li>
                                                    <span><a href="#"><img src="images/content/recent_4.png" alt="" /></a></span>
                                                    <a href="#">Various versions has evolved over the years</a>
                                                    <i>October 18, 2015</i>
                                                </li>
                                                <li>
                                                    <span><a href="#"><img src="images/content/recent_5.png" alt="" /></a></span>
                                                    <a href="#">Rarious versions has evolve over the years</a>
                                                    <i>October 17, 2015</i>
                                                </li>
                                                <li class="last-tab">
                                                    <span><a href="#"><img src="images/content/recent_6.png" alt="" /></a></span>
                                                    <a href="#">Marious versions has evolven over the years</a>
                                                    <i>October 16, 2015</i>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="tab-pane fade" id="Comment">
                                            <ul class="comments">
                                                <li class="comments_list clearfix">
                                                    <a class="post-thumbnail" href="#"><img width="60" height="60" src="images/content/recent_3.png" alt="#"></a>
                                                    <p><strong><a href="#">Prambose</a> <i>says: </i> </strong> Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada.</p>
                                                </li>
                                                <li class="comments_list clearfix">
                                                    <a class="post-thumbnail" href="#"><img width="60" height="60" src="images/content/recent_1.png" alt="#"></a>
                                                    <p><strong><a href="#">Makaroni</a> <i>says: </i> </strong> Tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada.</p>
                                                </li>
                                                <li class="comments_list clearfix">
                                                    <a class="post-thumbnail" href="#"><img width="60" height="60" src="images/content/recent_2.png" alt="#"></a>
                                                    <p><strong><a href="#">Prambanan</a> <i>says: </i> </strong> Donec convallis, metus nec tempus aliquet, nunc metus adipiscing leo, a lobortis nisi dui ut odio. Nullam ultrices, eros accumsan vulputate faucibus, turpis tortor.</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                     
                  </div>
               </div> -->
            </div><!--/.row-->
         </div> <!--/.container-->
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
            url : "${pageContext.request.contextPath}/admin/TemplateTotalAjax.tat",
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
          $('.templateList').empty(); 
          $.ajax({
            url : "${pageContext.request.contextPath}/admin/TemplateAjax.tat",
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
         /* console.log("ajax 리스트 이름 확인 : "+data.templateList);
         console.log("ajax data 전체 확인 : "+data); */
         for(var idx in data){
            /* console.log("데이터 확인 :"+  dateFormat((data[idx].enroll_date), 'mm/dd/yy')); */
         $('.templateList').append('<article class="post"><figure class="post_img"><a href="#"><img src="${pageContext.request.contextPath}/resources/images/blog/blog_medium_1.png" alt="blog post"></a>'+
               '</figure><div class="post_content"><div class="post_meta"><h2><a href="#">'+data[idx].t_title+'</a></h2><div class="metaInfo">'+
               '<span><i class="fa fa-user"></i> By <a href="#">Louis</a> </span><span><i class="fa fa-comments"></i> <a href="#">'+data[idx].t_use_count+'</a></span>'+
               '</div></div><p>'+data[idx].t_comment+'</p><a class="btn btn-small btn-default" href="#">자세히 보기</a></div></article>');
         };
      };
         
         
       function pageNextBtnCreate(num){
          var start = (showDoubleCount * btnCount * num) + 1;
          $.ajax({
               url : "${pageContext.request.contextPath}/admin/TemplateTotalCountAjax.tat",
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