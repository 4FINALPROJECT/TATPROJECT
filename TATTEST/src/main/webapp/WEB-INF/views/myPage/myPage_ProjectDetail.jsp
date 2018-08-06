<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
   <title>프로젝트 || 마이페이지</title>
   <c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
</head>
<body>
   <c:import url="common/myPage_Header.jsp"></c:import>
   
   <section class="wrapper">
      <section class="page_head">
         <div class="container">
            <div class="row">
               <div class="col-lg-12 col-md-12 col-sm-12">
                  <div class="page_title">
                     <h2>Project</h2>
                  </div>
                  <nav id="breadcrumbs">
                     <ul>
                        <li><a href="${pageContext.request.contextPath}/my/Main.tat">MyPage </a>/</li>
                        <li><a href="${pageContext.request.contextPath}/my/Project.tat">Project </a>/</li>
                        <li>Detail</li>
                     </ul>
                  </nav>
               </div>
            </div>
         </div>
      </section>
      
      <section class="content blog">
         <div class="container">
            <div class="row">
               <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                  <div class="blog_single">
                     <article class="post">
                        <figure class="post_img">
                           <a href="#">
                           ${pageContext.request.contextPath}/views/member/${m_code }/${p.e_code }/home.jsp
                           
                              <iframe src="${pageContext.request.contextPath}/WEB-INF/views/member/${m_code}/${p.e_code}/home.jsp" style="width:700px; height:500px;" scrolling="no"></iframe>
                              <%-- <img src="${pageContext.request.contextPath}/resources/images/blog/blog_1.png" alt="blog post"> --%>
                           
                           </a>
                        </figure>
                        <div class="post_date">
                           <span class="day">28</span>
                           <span class="month">Nov</span>
                        </div>
                        <div class="post_content">
                           <div class="post_meta">
                              <h2>
                                 <a href="#">${p.proj_name }</a>
                              </h2>
                              <div class="metaInfo">
                                 <span><i class="fa fa-calendar"></i> <a href="#">${p.save_date}</a> </span>
                                 <span><i class="fa fa-user"></i> By <a href="#">${p.m_code}</a> </span>
                                 <span><i class="fa fa-comments"></i> <a href="#">${count} Comments</a></span>
                              </div>
                           </div>
                           
                           
                           <blockquote class="default">
                              ${p.proj_comment }
                           </blockquote>   
                        </div>
                     </article>
                     
                  </div>

                  <!--News Comments-->
                        <div class="news_comments">
                            <div class="dividerHeading">
                                <h4><span>Comments (${count})</span></h4>
                            </div>
                            <div id="comment">
                                <ul id="comment-list">
                                    <c:forEach items="${rList}" var="rlist">
                                    <li class="comment">
                                        <div class="avatar"><img alt="" src="${pageContext.request.contextPath}/resources/images/1.jpg" class="avatar"></div>
                                        <div class="comment-container">
                                            <h4 class="comment-author"><a href="#">${rlist.m_code}</a></h4>
                                            <div class="comment-meta"><a href="#" class="comment-date link-style1">${rlist.er_date}</a><a class="comment-reply-link link-style3" href="#respond">★${rlist.er_rate}점</a></div>
                                            <div class="comment-body">
                                                <p>${rlist.er_reply}</p>
                                            </div>
                                        </div>
                                    </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <!-- /#comments -->
                            <div class="dividerHeading">
                                <h4><span>Leave a comment</span></h4>
                                </div>

                            <div class="comment_form">
                               <div class="row">
                                   <div class="col-sm-4">
                                       <input class="col-lg-4 col-md-4 form-control" name="name" type="text" id="name" size="30"  onfocus="if(this.value == 'Name') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Name'; }" value="Name" placeholder="Name" >
                                   </div>
                                   <div class="col-sm-4">
                                       <input class="col-lg-4 col-md-4 form-control" name="email" type="text" id="email" size="30" onfocus="if(this.value == 'E-mail') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'E-mail'; }" value="E-mail" placeholder="E-mail">
                                   </div>
                                   <div class="col-sm-4">
                                       <input class="col-lg-4 col-md-4 form-control" name="url" type="text" id="url" size="30" onfocus="if(this.value == 'Url') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Url'; }" value="Url" placeholder="Url">
                                   </div>
                               </div>
                            </div>
                            <div class="comment-box row">
                                <div class="col-sm-12">
                                    <p>
                                        <textarea name="comments" class="form-control" rows="6" cols="40" id="comments" onfocus="if(this.value == 'Message') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Message'; }" placeholder="Message">Message</textarea>
                                    </p>
                                </div>
                            </div>

                            <a class="btn btn-lg btn-default" href="#">Post Comment</a>
                        </div>
                </div>

               <!--Sidebar Widget-->
               <div class="col-xs-12 col-md-4 col-lg-4 col-sm-4">
                  <div class="sidebar">
                     
                     
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
                     
                     <div class="widget widget_about">
                        <div class="widget_title">
                           <h4><span>Basic Text Widget</span></h4>
                           </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adip, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
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
                                        <div class="tab-pane fade">
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
               </div>
            </div><!--/.row-->
         </div> <!--/.container-->
      </section>
      
   </section>

   <c:import url="common/myPage_Footer.jsp"></c:import>
   <c:import url="../common/JS.jsp"></c:import>
   <script>
       (function ($) {
           var $container = $('.masonry_wrapper_blog'),
                   colWidth = function () {
                       var w = $container.width(),
                               columnNum = 1,
                               columnWidth = 0;
                       if (w > 1200) {
                           columnNum  = 3;
                       } else if (w > 900) {
                           columnNum  = 3;
                       } else if (w > 600) {
                           columnNum  = 2;
                       } else if (w > 300) {
                           columnNum  = 1;
                       }
                       columnWidth = Math.floor(w/columnNum);
                       $container.find('.item').each(function() {
                           var $item = $(this),
                                   multiplier_w = $item.attr('class').match(/item-w(\d)/),
                                   multiplier_h = $item.attr('class').match(/item-h(\d)/),
                                   width = multiplier_w ? columnWidth*multiplier_w[1]-4 : columnWidth-4,
                                   height = multiplier_h ? columnWidth*multiplier_h[1]*0.5-4 : columnWidth*0.5-4;
                           $item.css({
                               width: width,
                               height: height
                           });
                       });
                       return columnWidth;
                   }
   
           function refreshWaypoints() {
               setTimeout(function() {
               }, 1000);
           }
   
           $('nav.portfolio-filter ul a').on('click', function() {
               var selector = $(this).attr('data-filter');
               $container.isotope({ filter: selector }, refreshWaypoints());
               $('nav.portfolio-filter ul a').removeClass('active');
               $(this).addClass('active');
               return false;
           });
   
           function setPortfolio() {
               setColumns();
               $container.isotope('reLayout');
           }
   
           isotope = function () {
               $container.isotope({
                   resizable: true,
                   itemSelector: '.item',
                   masonry: {
                       columnWidth: colWidth(),
                       gutterWidth: 0
                   }
               });
           };
           isotope();
           $(window).smartresize(isotope);
       }(jQuery));
   </script>
</body>
</html>