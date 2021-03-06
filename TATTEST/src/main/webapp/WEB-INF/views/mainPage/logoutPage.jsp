<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
	<title>메인</title>
    <c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
</head>
<body class="home">
	<c:import url="common/mainPage_Header.jsp"></c:import>
	<c:import url="common/mainPage_Signin.jsp"></c:import>
	<c:import url="common/mainPage_Signup.jsp"></c:import>
	
	<section class="wrapper">
        <div class="slider-wrapper">
            <div class="slider">
                <div class="fs_loader"></div>
                <div class="slide">
                    <img src="${pageContext.request.contextPath}/resources/images/fraction-slider/base.jpg" width="1920" height="auto" data-in="fade" data-out="fade" />

                    <img src="${pageContext.request.contextPath}/resources/images/fraction-slider/slider-boy.png" width="600" height="600" data-position="30,1100" data-in="left" data-out="right" data-delay="700"/>

                    <p class="slide-1" data-position="50,610" data-in="fade" data-out="fade" data-delay="800">걱정 없이 시작해볼까요?</p>
                    <p class="slide-1" data-position="100,560" data-in="fade" data-out="fade" data-delay="1200">홈페이지 무료 제작의 모든 것! </p>

                    <p class="slide-1a" data-position="220,770" data-in="bottom" data-out="bottom" data-delay="2000" data-ease-in="easeOutBounce">세련된 디자인의 템플릿</p>
                    <p class="slide-1a" data-position="267,698" data-in="bottom" data-out="bottom" data-delay="3200"  data-ease-in="easeOutBounce">드래그-앤-드롭 방식의 에디터</p>
                    <p class="slide-1a" data-position="314,760" data-in="bottom" data-out="bottom" data-delay="4200"  data-ease-in="easeOutBounce">모바일 최적화 기능</p>
                    <p class="slide-1a" data-position="361,753" data-in="bottom" data-out="bottom" data-delay="5200"  data-ease-in="easeOutBounce">맞춤형 도메인 등록</p>
                </div>

                <div class="slide">
                    <img src="${pageContext.request.contextPath}/resources/images/fraction-slider/base_2.jpg" width="1920" height="auto" data-in="fade" data-out="fade" />

                    <img src="${pageContext.request.contextPath}/resources/images/fraction-slider/slider-girl.png" width="600" height="545" data-position="20,400" data-in="right" data-0ut="bottom" data-delay="500"/>

                    <p class="slide-2 " data-position="120,900" data-in="bottom" data-out="top" data-delay="2000">마우스 하나로 홈페이지를 완성하세요!</p>
                    <p class="slide-2a " data-position="210,900" data-in="left" data-out="right" data-delay="3000">내가 꿈꾸는 홈페이지를 직접 제작하세요.</p>
                    <p class="slide-2b " data-position="270,900" data-in="top" data-out="bottom" data-delay="4000" data-ease-in="easeOutBounce">코딩 전문가도 웹디자이너도 필요 없습니다.</p>
                </div>

                <div class="slide">
                    <img src="${pageContext.request.contextPath}/resources/images/fraction-slider/base_3.jpg"  width="1920" height="auto" data-in="fade" data-out="fade" />

                    <p class="slide-heading" data-position="130,370" data-in="top" data-out="top" data-ease-in="easeOutBounce" data-delay="1500">날마다 새로워요!</p>

                    <p class="sub-line" data-position="230,370" data-in="right" data-out="left" data-delay="2500">TAT의 앱 마켓 서비스를 만나보세요.</p>

                    <img src="${pageContext.request.contextPath}/resources/images/fraction-slider/gadgets/laptop.png" width="456" height="272" data-position="115,1180" data-in="bottom" data-out="bottom" data-delay="400">

                    <img src="${pageContext.request.contextPath}/resources/images/fraction-slider/gadgets/mack.png" width="357" height="313" data-position="90,1040" data-in="top" data-out="bottom" data-delay="200">

                    <img src="${pageContext.request.contextPath}/resources/images/fraction-slider/gadgets/ipad.png" width="120" height="170" data-position="230,1030" data-in="left" data-out="left" data-delay="300">

                    <img src="${pageContext.request.contextPath}/resources/images/fraction-slider/gadgets/smartphone.png" width="70" height="140" data-position="270,1320" data-in="right" data-out="right" data-delay="300">

                    <a href=""	class="btn btn-lg btn-default" data-position="320,370" data-in="bottom"  data-out="bottom" data-delay="3700" data-ease-in="easeOutBounce">Free Download</a>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row super_sub_content">
                <div class="col-md-3 col-sm-6">
                    <div class="serviceBox_2 green">
                        <div class="service-icon">
                            <i class="fa fa-globe"></i>
                        </div>
                        <div class="service-content">
                            <h3>Web Development</h3>
                            <p> sit amet, consec tetuer adipis elit, aliquam eget nibh etlibura.</p>
                            <div class="read">
                                <a href="">Read more</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="serviceBox_2 purple">
                        <div class="service-icon">
                            <i class="fa fa-rocket"></i>
                        </div>
                        <div class="service-content">
                            <h3>Brand Building</h3>
                            <p> sit amet, consec tetuer adipis elit, aliquam eget nibh etlibura.</p>
                            <div class="read">
                                <a href="">Read more</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="serviceBox_2 red">
                        <div class="service-icon">
                            <i class="fa fa-user-md"></i>
                        </div>
                        <div class="service-content">
                            <h3>Responsive Design</h3>
                            <p> sit amet, consec tetuer adipis elit, aliquam eget nibh etlibura.</p>
                            <div class="read">
                                <a href="">Read more</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="serviceBox_2 blue">
                        <div class="service-icon">
                            <i class="fa fa-twitter"></i>
                        </div>
                        <div class="service-content">
                            <h3>Clean & Clear Design</h3>
                            <p> sit amet, consec tetuer adipis elit, aliquam eget nibh etlibura.</p>
                            <div class="read">
                                <a href="">Read more</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="grey_bg pdt-70">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 feature-block">
                        <img class="img-responsive center-block" src="${pageContext.request.contextPath}/resources/images/laptop.png"/>
                    </div>

                    <div class="feature-block col-sm-7">
                        <h4>Clean, Professional <span>and Modern Design</span></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam earum enim est natus nulla odio perferendis totam. A eaque,  consectetur adipisicing elit. Aliquam earum enim est natus nulla odio  consectetur adipisicing elit. Aliquam earum enim est natus nulla odio nesciunt. Autem cum distinctio eligendi impedit mollitia officia perferendis praesentium tempore veniam voluptas. Assumenda fuga laboriosam modi perspiciatis possimus rem suscipit. Adipisci, eos exercitationem molestiae nesciunt quaerat ullam veniam vitae voluptatum.
                        </p>
                        <a class="btn btn-default mrgb-20" href="">Read More</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid grey-transparent-content">
            <div class="row">
                <div class="col-md-8 same-height sub_content clearfix">
                    <div class="col-sm-6">
                        <div class="serviceBox_1">
                            <div class="service-icon">
                                <i class="fa fa-pencil"></i>
                            </div>
                            <div class="service-content">
                                <h3>Clean &amp; Minimal</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque a feugiat ligula, in efficitur ligula. Duis interdum velit orci, tempor facilisis magna.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="serviceBox_1">
                            <div class="service-icon">
                                <i class="fa fa-diamond"></i>
                            </div>
                            <div class="service-content">
                                <h3>Branding Theme</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque a feugiat ligula, in efficitur ligula. Duis interdum velit orci, tempor facilisis magna. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="serviceBox_1">
                            <div class="service-icon">
                                <i class="fa fa-anchor"></i>
                            </div>
                            <div class="service-content">
                                <h3>Modern Design</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque a feugiat ligula, in efficitur ligula. Duis interdum velit orci, tempor facilisis magna. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="serviceBox_1">
                            <div class="service-icon">
                                <i class="fa fa-gears"></i>
                            </div>
                            <div class="service-content">
                                <h3>Quick Support</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque a feugiat ligula, in efficitur ligula. Duis interdum velit orci, tempor facilisis magna. </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 same-height hidden-sm hidden-xs text-center retro">
                    <div class="heading-item">
                        <h4>
                            Ullam Corporis Suscipit </h4>
                        <p>
                            Nemo enim ipsam voluptatem quia voluptas sit aspernatur<br>
                            aut odit aut fugit, sed quia consequuntur
                        </p>
                        <a class="btn btn-default btn-lg" href="">Get a free Quote</a>
                        <em>or give us call
                            <strong>
                                +23-4321-12323
                            </strong>
                        </em>
                    </div>
                </div>
            </div>
        </div>

        <section class="feature-block">
            <div class="container">
                <div class="row super_sub_content">
                    <div class="col-lg-6 wow fadeInLeft">
                        <div class="text-center">
                            <img src="${pageContext.request.contextPath}/resources/images/mobile-1.png" alt=""/>
                        </div>
                    </div>

                    <div class="col-lg-6 fadeInRight">
                        <h4>Responsive Designs</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae cum dolore fugit impedit nisi, quasi saepe temporibus velit! Debitis, nihil velit? A accusantium adipisci aliquam amet aperiam aut consequuntur dolore ducimus eaque eius est eveniet fugiat maxime molestias natus necessitatibus quae sapiente suscipit tenetur veniam vero, voluptate voluptatum! At, quia!</p>
                        <hr>
                        <i class="fa fa-apple"></i>
                        <i class="fa fa-windows"></i>
                        <i class="fa fa-clock-o"></i>
                        <i class="fa fa-android"></i>
                        <i class="fa fa-paperclip"></i>
                        <i class="fa fa-skype"></i>
                        <hr>
                        <a href="" class="btn btn-default btn-md">Read more</a>&nbsp;
                        <a href="" class="btn btn-default btn-md">Purchase Now</a>
                    </div>
                </div>
            </div>
        </section>
        <div class="grey_bg">
            <div class="container">
                <div class="row sub_content">
                    <div class="col-lg-3 col-md-4 col-sm-6 text-center">
                        <span class="circular-chart-big" data-percent="94">
                            <span class="percent"></span>
                        </span>
                        <h5 class="circular-title">WebDesign</h5>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 text-center">
                        <span class="circular-chart-big" data-percent="87">
                            <span class="percent"></span>
                        </span>
                        <h5 class="circular-title">Graphic Design</h5>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 text-center">
                        <span class="circular-chart-big" data-percent="77">
                            <span class="percent"></span>
                        </span>
                        <h5 class="circular-title">Mobile Applications</h5>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 text-center">
                        <span class="circular-chart-big" data-percent="82">
                            <span class="percent"></span>
                        </span>
                        <h5 class="circular-title">Search Engine Optimization</h5>
                    </div>
                </div>
            </div>
        </div>

        <div class="progress-bar-acc">
            <div class="container">
                <div class="row super_sub_content">
                    <div class="col-lg-6 ">
                        <ul class="progress-skill-bar mrg-0">
                            <li>
                                <span class="lable">70%</span>
                                <div class="progress_skill">
                                    <div data-height="100" role="progressbar" data-value="70" class="bar" style="width: 0px; height: 0px;">
                                        HTML
                                    </div>
                                </div>
                            </li>
                            <li>
                                <span class="lable">80%</span>
                                <div class="progress_skill">
                                    <div data-height="100" role="progressbar" data-value="80" class="bar" style="width: 0px; height: 0px;">
                                        CSS
                                    </div>
                                </div>
                            </li>
                            <li>
                                <span class="lable">90%</span>
                                <div class="progress_skill">
                                    <div data-height="100" role="progressbar" data-value="90" class="bar" style="width: 0px; height: 0px;">
                                        JavaScript
                                    </div>
                                </div>
                            </li>
                            <li>
                                <span class="lable">80%</span>
                                <div class="progress_skill">
                                    <div data-height="100" role="progressbar" data-value="80" class="bar" style="width: 0px; height: 0px;">
                                        MySQL
                                    </div>
                                </div>
                            </li>
                            <li>
                                <span class="lable">70%</span>
                                <div class="progress_skill">
                                    <div data-height="100" role="progressbar" data-value="70" class="bar" style="width: 0px; height: 0px;">
                                        PHP
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-6">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading button_outer_rounded" role="tab" id="heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse" aria-expanded="true" aria-controls="collapseOne">
                                            Stunning Design & Countless Options
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading">
                                    <div class="panel-body">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue lorem ut augue aliquam, ut rutrum nulla eleifend. Nunc aliquam suscipit leo, in mattis massa ullamcorper sed. Pellentesque dictum erat at eros egestas, vel convallis nibh pharetra. Class aptent taciti sociosqu ad litora torquent.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading button_outer_rounded" role="tab" id="heading1">
                                    <h4 class="panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="false" aria-controls="collapseTwo">
                                            Tons of customization options
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading1">
                                    <div class="panel-body">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue lorem ut augue aliquam, ut rutrum nulla eleifend. Nunc aliquam suscipit leo, in mattis massa ullamcorper sed. Pellentesque dictum erat at eros egestas, vel convallis nibh pharetra. Class aptent taciti sociosqu ad litora torquent.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading button_outer_rounded" role="tab" id="heading2">
                                    <h4 class="panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse2" aria-expanded="false" aria-controls="collapseThree">
                                            Ease of Content creation and modification
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2">
                                    <div class="panel-body">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue lorem ut augue aliquam, ut rutrum nulla eleifend. Nunc aliquam suscipit leo, in mattis massa ullamcorper sed. Pellentesque dictum erat at eros egestas, vel convallis nibh pharetra. Class aptent taciti sociosqu ad litora torquent.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="parallax parallax-1">
            <div class="container">
                <div class="row">
                    <div id="parallax-testimonial-carousel" class="parallax-testimonial carousel wow fadeInUp">
                        <div class="carousel-inner">
                            <div class="active item">
                                <div class="parallax-testimonial-item">
                                    <blockquote>
                                        <p>Donec convallis, metus nec tempus aliquet, nunc metus adipiscing leo, a lobortis nisi dui ut odio. Nullam ultrices, eros accumsan vulputate faucibus, turpis tortor dictum.</p>
                                    </blockquote>
                                    <p>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </p>
                                    <div class="parallax-testimonial-review">
                                        <img src="${pageContext.request.contextPath}/resources/images/testimonials/1.png" alt="testimonial">
                                        <span>Jonathan Dower</span>
                                        <small>Company Inc.</small>
                                    </div>
                                </div>
                            </div>

                            <div class="item">
                                <div class="parallax-testimonial-item">
                                    <blockquote>
                                        <p>Metus aliquet tincidunt metus, sit amet mattis lectus sodales ac. Suspendisse rhoncus dictum eros, ut egestas eros luctus eget. Nam nibh sem, mattis et feugiat ut, porttitor nec risus.</p>
                                    </blockquote>
                                    <p>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </p>
                                    <div class="parallax-testimonial-review">
                                        <img src="${pageContext.request.contextPath}/resources/images/testimonials/2.png" alt="testimonial">
                                        <span>Jonathan Dower</span>
                                        <small>Leopard</small>
                                    </div>
                                </div>
                            </div>

                            <div class="item">
                                <div class="parallax-testimonial-item">
                                    <blockquote>
                                        <p>Nunc aliquet tincidunt metus, sit amet mattis lectus sodales ac. Suspendisse rhoncus dictum eros, ut egestas eros luctus eget. Nam nibh sem, mattis et feugiat ut, porttitor nec risus.</p>
                                    </blockquote>
                                    <p>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </p>
                                    <div class="parallax-testimonial-review">
                                        <img src="${pageContext.request.contextPath}/resources/images/testimonials/3.png" alt="testimonial">
                                        <span>Jonathan Dower</span>
                                        <small>Leopard</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <ol class="carousel-indicators">
                            <li data-slide-to="0" data-target="#parallax-testimonial-carousel" class=""></li>
                            <li data-slide-to="1" data-target="#parallax-testimonial-carousel" class="active"></li>
                            <li data-slide-to="2" data-target="#parallax-testimonial-carousel" class=""></li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>

        <section class="super_sub_content">
            <div class="dividerHeading text-center">
                <h4><span>RECENT PORTFOLIO ITEMS</span></h4>
            </div>

            <nav class="clearfix">
                <ul id="filter">
                    <li data-filter="*" class="selected"><a href="#">All Works</a></li>
                    <li data-filter=".mockups"><a href="#">Mockups</a></li>
                    <li data-filter=".graphic-design"><a href="#">Graphics</a></li>
                    <li data-filter=".web-design"><a href="#">Web Projects</a></li>
                    <li data-filter=".flayers"><a href="#">Flayers</a></li>
                </ul>
            </nav>

            <div class="portfolio-centered">
                <div class="recentitems portfolio">

                    <div class="portfolio-item mockups">
                        <div class="box">
                            <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_1.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>A Graphic Design Item</h5>
                                    <a href="${pageContext.request.contextPath}/resources/images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div><!-- box -->
                    </div>

                    <div class="portfolio-item web-design graphic-design">
                        <div class="box">
                            <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_2.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>New Flayer Design Item</h5>
                                    <a href="${pageContext.request.contextPath}/resources/images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div><!-- box -->
                    </div>

                    <div class="portfolio-item graphic-design">
                        <div class="box">
                            <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_3.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Gray and Pink</h5>
                                    <a href="${pageContext.request.contextPath}/resources/images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div><!-- box -->
                    </div>

                    <div class="portfolio-item mockups">
                        <div class="box">
                            <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_4.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Amazing Keyboard Desin</h5>
                                    <a href="${pageContext.request.contextPath}/resources/images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div><!-- box -->
                    </div>

                    <div class="portfolio-item flayers">
                        <div class="box">
                            <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_5.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Our Favorite Colors</h5>
                                    <a href="${pageContext.request.contextPath}/resources/images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div><!-- box -->
                    </div>

                    <div class="portfolio-item flayers">
                        <div class="box">
                            <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_6.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Not War Make Design</h5>
                                    <a href="${pageContext.request.contextPath}/resources/images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div><!-- box -->
                    </div>

                    <div class="portfolio-item graphic-design mockups">
                        <div class="box">
                            <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_7.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>A GREAT MOCK-UPS</h5>
                                    <a href="${pageContext.request.contextPath}/resources/images/portfolio/full/portfolio_5.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div><!-- box -->
                    </div>

                    <div class="portfolio-item web-design mockups">
                        <div class="box">
                            <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_8.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Missis Of 2014</h5>
                                    <a href="${pageContext.request.contextPath}/resources/images/portfolio/full/portfolio_4.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div><!-- box -->
                    </div>

                    <div class="portfolio-item web-design mockups">
                        <div class="box">
                            <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_9.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Light Carpet</h5>
                                    <a href="${pageContext.request.contextPath}/resources/images/portfolio/full/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div><!-- box -->
                    </div>

                    <div class="portfolio-item web-design mockups">
                        <div class="box">
                            <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_10.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Business Card Mock-Up</h5>
                                    <a href="${pageContext.request.contextPath}/resources/images/portfolio/full/portfolio_8.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div><!-- box -->
                    </div>

                </div><!-- portfolio -->
            </div><!-- portfolio container -->
        </section>

        <div class="grey-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-5 col-md-offset-1 super_sub_content clearfix same-height">
                        <div class="col-sm-6">
                            <div class="serviceBox_1">
                                <div class="service-icon">
                                    <i class="fa fa-pencil"></i>
                                </div>
                                <div class="service-content">
                                    <h3>Clean &amp; Minimal</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec euismod dui. Mauris risus dolor, vulputate at placerat vitae, rutrum vel.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="serviceBox_1">
                                <div class="service-icon">
                                    <i class="fa fa-diamond"></i>
                                </div>
                                <div class="service-content">
                                    <h3>Branding Theme</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec euismod dui. Mauris risus dolor, vulputate at placerat vitae, rutrum vel.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="serviceBox_1">
                                <div class="service-icon">
                                    <i class="fa fa-anchor"></i>
                                </div>
                                <div class="service-content">
                                    <h3>Modern Design</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec euismod dui. Mauris risus dolor, vulputate at placerat vitae, rutrum vel.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="serviceBox_1">
                                <div class="service-icon">
                                    <i class="fa fa-gears"></i>
                                </div>
                                <div class="service-content">
                                    <h3>Quick Support</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec euismod dui. Mauris risus dolor, vulputate at placerat vitae, rutrum vel.</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 inner-image same-height hidden-sm hidden-xs " style="background:url('${pageContext.request.contextPath}/resources/images/awesome.png')no-repeat;"></div>
                </div>
            </div>
        </div>

        <div class="super_sub_content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-7">
                        <img class="img-responsive center-block" src="${pageContext.request.contextPath}/resources/images/imac.png"/>
                    </div>
                    <div class="feature-block col-sm-5">
                        <h4>Mobile is the future,<span><br/> fully responsive & retina ready</span></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam earum enim est natus nulla odio perferendis totam. A eaque,  consectetur adipisicing elit. Aliquam earum enim est natus nulla odio  consectetur adipisicing elit. Aliquam earum enim est natus nulla odio nesciunt. Autem cum distinctio eligendi impedit mollitia officia perferendis praesentium tempore veniam voluptas. Assumenda fuga laboriosam modi perspiciatis possimus rem suscipit. Adipisci, eos exercitationem molestiae nesciunt quaerat ullam veniam vitae voluptatum.
                        </p>
                        <a class="btn btn-default" href="">Read More</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="grey-line-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 col-sm-12 sub_content same-height">
                        <div class="col-sm-12">
                            <div class="serviceBox_1">
                                <div class="service-icon">
                                    <i class="fa fa-pencil"></i>
                                </div>
                                <div class="service-content">
                                    <h3>Clean &amp; Minimal</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam malesuada in enim vulputate ullamcorper. Nam semper, nibh at porta fermentum, sem felis. </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="serviceBox_1">
                                <div class="service-icon">
                                    <i class="fa fa-anchor"></i>
                                </div>
                                <div class="service-content">
                                    <h3>Branding Theme</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam malesuada in enim vulputate ullamcorper. Nam semper, nibh at porta fermentum, sem felis.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="serviceBox_1">
                                <div class="service-icon">
                                    <i class="fa fa-gears"></i>
                                </div>
                                <div class="service-content">
                                    <h3>Modern Design</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam malesuada in enim vulputate ullamcorper. Nam semper, nibh at porta fermentum, sem felis.</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 inner-image hidden-sm hidden-xs same-height" style="background:url('${pageContext.request.contextPath}/resources/images/slide-1.png')no-repeat;"></div>
                </div>
            </div>
        </div>

        <div class="feature-block pdt-50">
            <div class="container">
                <div class="row">
                    <div class="col-md-7 text-center">
                        <img class="" src="${pageContext.request.contextPath}/resources/images/awesome-img.png"/>
                    </div>
                    <div class="col-md-5">
                        <h4>Professional,<span><br/>business solution & consulting</span></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut est accumsan, sollicitudin neque eget, sollicitudin ex. Quisque sit amet. </p>
                        <a class="btn btn-default mrgb-20" href="">Read More</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="serviceBox_6 same-height">
                        <div class="service-content">
                            <h3>Clean& powerful code</h3>
                            <span class="line"></span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas luctus condimentum felis, sit amet placerat felis. Mauris porta lorem.</p>
                            <a class="btn btn-default" href="">Read more <i class="fa fa-thumbs-up"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="serviceBox_6 same-height purple">
                        <div class="service-content">
                            <h3>Incredibly Flexible</h3>
                            <span class="line"></span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas luctus condimentum felis, sit amet placerat felis. Mauris porta lorem.</p>
                            <a class="btn btn-default" href="">Read more <i class="fa fa-thumbs-up"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="serviceBox_6 same-height black">
                        <div class="service-content">
                            <h3>Quick Support</h3>
                            <span class="line"></span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas luctus condimentum felis, sit amet placerat felis. Mauris porta lorem.</p>
                            <a class="btn btn-default" href="">Read more <i class="fa fa-thumbs-up"></i></a>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="super_sub_content grey_bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 mrgt-70">
                        <div class="serviceBox_7 right">
                            <div class="service-icon">
                                <i class="fa fa-headphones"></i>
                            </div>
                            <h3>SEO Ready</h3>
                            <p>
                                Drag more traffic to your website with our SEO Friendly theme: simply bank...
                            </p>
                        </div>

                        <div class="serviceBox_7 right">
                            <div class="service-icon">
                                <i class="fa fa-tasks"></i>
                            </div>
                            <h3>Retina Ready</h3>
                            <p>
                                All our themes come with extensive HTML Documentation that teaches you how...
                            </p>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <img src="${pageContext.request.contextPath}/resources/images/phones.png" class="img-responsive center-block">
                    </div>

                    <div class="col-md-4 mrgt-70">
                        <div class="serviceBox_7">
                            <div class="service-icon">
                                <i class="fa fa-pencil"></i>
                            </div>
                            <h3>easy customizable</h3>
                            <p>
                                All our themes include advanced options which makes them super flexible for...
                            </p>
                        </div>
                        <div class="serviceBox_7">
                            <div class="service-icon">
                                <i class="fa fa-gears"></i>
                            </div>
                            <h3>global features</h3>
                            <p>
                                We made sure images on your website would look stunning on any device. Our...
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--</div>-->

        <div class="container">
            <div class="row super_sub_content">
                <div class="col-md-12">
                    <div class="dividerHeading">
                        <h4><span>Recent news</span></h4>
                    </div>

                    <div id="post-slider" class="owl-carousel">
                        <div class="post-slide">
                            <div class="post-img">
                                <img src="${pageContext.request.contextPath}/resources/images/blog/blog_1.png">
                            </div>
                            <h5 class="post-title"><a href="blog-post.html">Latest News Post</a></h5>
                            <div class="post-date">
                                <i class="fa fa-calendar"></i> April 23, 2015
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eleifend urna eu ...</p>
                            <a class="readmore" href="">Read more</a>
                        </div>
                        <div class="post-slide">
                            <div class="post-img">
                                <img src="${pageContext.request.contextPath}/resources/images/blog/blog_2.png">
                            </div>
                            <h5 class="post-title"><a href="blog-post.html">Latest News Post</a></h5>
                            <div class="post-date">
                                <i class="fa fa-calendar"></i> April 23, 2015
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eleifend urna eu ...</p>
                            <a class="readmore" href="">Read more</a>
                        </div>
                        <div class="post-slide">
                            <div class="post-img">
                                <img src="${pageContext.request.contextPath}/resources/images/blog/blog_3.png">
                            </div>
                            <h5 class="post-title"><a href="blog-post.html">Latest News Post</a></h5>
                            <div class="post-date">
                                <i class="fa fa-calendar"></i> April 23, 2015
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eleifend urna eu ...</p>
                            <a class="readmore" href="">Read more</a>
                        </div>
                        <div class="post-slide">
                            <div class="post-img">
                                <img src="${pageContext.request.contextPath}/resources/images/blog/blog-4.png">
                            </div>
                            <h5 class="post-title"><a href="blog-post.html">Latest News Post</a></h5>
                            <div class="post-date">
                                <i class="fa fa-calendar"></i> April 23, 2015
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eleifend urna eu ...</p>
                            <a class="readmore" href="">Read more</a>
                        </div>
                        <div class="post-slide">
                            <div class="post-img">
                                <img src="${pageContext.request.contextPath}/resources/images/blog/blog_1.png">
                            </div>
                            <h5 class="post-title"><a href="blog-post.html">Latest News Post</a></h5>
                            <div class="post-date">
                                <i class="fa fa-calendar"></i> April 23, 2015
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eleifend urna eu ...</p>
                            <a class="readmore" href="">Read more</a>
                        </div>
                        <div class="post-slide">
                            <div class="post-img">
                                <img src="${pageContext.request.contextPath}/resources/images/blog/blog_2.png">
                            </div>
                            <h5 class="post-title"><a href="blog-post.html">Latest News Post</a></h5>
                            <div class="post-date">
                                <i class="fa fa-calendar"></i> April 23, 2015
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eleifend urna eu ...</p>
                            <a class="readmore" href="">Read more</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="promo_box wow bounceInUp" data-wow-offset="50">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9 col-md-9 col-lg-9">
                        <div class="promo_content">
                            <h3>Electrify is awesome responsive template, with clean design.</h3>
                            <p>Lorem ipsum dolor sit amet, cons adipiscing elit. Aenean commodo ligula eget dolor. </p>
                        </div>
                    </div>
                    <div class="col-sm-3 col-md-3 col-lg-3">
                        <div class="pb_action">
                            <a class="btn btn-lg btn-default" href="#fakelink">
                                <i class="fa fa-shopping-cart"></i>
                                Download Now
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </section>
	
	<c:import url="common/mainPage_Footer.jsp"></c:import>
	<c:import url="../common/JS.jsp"></c:import>
	<script>
   alert("${msg}");
   </script>
</body>
</html>
