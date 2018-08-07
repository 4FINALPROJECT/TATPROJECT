(function($){
    $(document).ready(function(){

        /*----------------------------------------------------*/
        /*   Sticky Header
        /*----------------------------------------------------*/
        (function() {
            $('#logo-bar').scrollToFixed(); // Fixed Navigation Bar
         })();

        /*----------------------------------------------------*/
        /*   Same Height Div's
        /*----------------------------------------------------*/
        if(jQuery.isFunction(jQuery.fn.matchHeight)){
            $('.same-height').matchHeight();
        }

        /*----------------------------------------------------*/
        /*   Fraction Slider
        /*----------------------------------------------------*/
        if(jQuery.isFunction(jQuery.fn.fractionSlider)){
            $(window).load(function(){
                $('.slider').fractionSlider({
                    'fullWidth':          true,
                    'controls':          true,
                    'responsive':          true,
                    'dimensions':          "1920,450",
                    'timeout' :             5000,
                    'increase':          true,
                    'pauseOnHover':       true,
                    'slideEndAnimation':    false,
                    'autoChange':           true
                });
            });
        }
        /*----------------------------------------------------*/
        /*   EasyPie Chart Effects
         /*----------------------------------------------------*/
        if(jQuery.isFunction(jQuery.fn.easyPieChart)){

            // Big EasyPie Chart Effects;
            $('.circular-chart-big').easyPieChart({
                animate : 2000,
                barColor: "#727CB6",
                trackColor : '#f9f9f9',
                scaleColor: false,
                lineWidth: 11,
                size: 180,
                onStep: function(from, to, percent) {
                    $(this.el).find('.percent').text(Math.round(percent)+'%');
                }
            });

            // Small EasyPie Chart Effects;
            $('.circular-chart-small').easyPieChart({
                size : 120,
                animate : 2000,
                lineWidth : 7,
                lineCap : 'square',
                barColor : '#727CB6',
                trackColor : '#f9f9f9',
                scaleColor : false,
                onStep: function(from, to, percent) {
                    $(this.el).find('.percent').text(Math.round(percent)+'%');
                }
            });
        }

        /*----------------------------------------------------*/
        /*   Owl Carousel
        /*----------------------------------------------------*/
        if(jQuery.isFunction(jQuery.fn.owlCarousel)){

            // Recent Work Slider
            $("#recent-work-slider").owlCarousel({
                navigation : true,
                pagination : false,
                items : 5,
                itemsDesktop:[1199,4],
                itemsTablet : [768, 3],
                itemsDesktopSmall : [992, 3],
                itemsMobile : [480,1],
                navigationText : ["",""]
            });

            // Post News Slider
            $("#post-slider").owlCarousel({
                navigation : true,
                pagination : false,
                items : 4,
                itemsDesktop:[1199,3],
                itemsDesktopSmall:[980,2],
                itemsMobile : [479,1],
                navigationText : ["",""]
            });
        }

        // ============================
        //  = Scroll event function =
        //  ===========================
        var goScrolling = function(elem) {
            var docViewTop = $(window).scrollTop();
            var docViewBottom = docViewTop + $(window).height();
            var elemTop = elem.offset().top;
            var elemBottom = elemTop + elem.height();
            return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
        };

        //  =======================
        //  = Progress bars =
        //  =======================
        $('.progress_skill .bar').data('width', $(this).width()).css({
            width : 0,
            height:0
        });
        $(window).scroll(function() {
            $('.progress_skill .bar').each(function() {
                if (goScrolling($(this))) {
                    $(this).css({
                        width : $(this).attr('data-value') + '%',
                        height : $(this).attr('data-height') + '%'
                    });
                }
            });
        });

        /*===========================================================*/
        /*   Flickr Gallery
        /*===========================================================*/
        $('#flickrFeed').jflickrfeed({
            limit: 9,
            qstrings: {
                //id: '124787947@N07' our id //
                id: '124787947@N07'
            },
            itemTemplate: '<li><a class="mfp-gallery" title="{{title}}" href="{{image_b}}"><i class="fa fa-search"></i><div class="hover"></div></a><img src="{{image_s}}" alt="{{title}}" /></li>'
        });

        /*===========================================================*/
        /*   Isotope Portfolio
        /*===========================================================*/
        if(jQuery.isFunction(jQuery.fn.isotope)){
            jQuery('.portfolio_list').isotope({
                itemSelector : '.list_item',
                layoutMode : 'fitRows',
                animationEngine : 'jquery'
            });

            /* ---- Filtering ----- */
            jQuery('#filter li').click(function(){
                var $this = jQuery(this);
                if ( $this.hasClass('selected') ) {
                    return false;
                } else {
                    jQuery('#filter .selected').removeClass('selected');
                    var selector = $this.attr('data-filter');
                    $this.parent().next().isotope({ filter: selector });
                    $this.addClass('selected');
                    return false;
                }
            });
        }

        /*===========================================================*/
        /*   Image Hover Effect - HoverDirection.js
        /*===========================================================*/
        if(jQuery.isFunction(jQuery.fn.hoverDirection)){
            $('.box').hoverDirection();

            // Example of calling removeClass method after a CSS animation
            $('.box .inner').on('animationend', function (event) {
                var $box = $(this).parent();
                $box.filter('[class*="-leave-"]').hoverDirection('removeClass');
            });
        }

        /*----------------------------------------------------*/
        /*   Magnific Popup
        /*----------------------------------------------------*/
        $('body').magnificPopup({
            type: 'image',
            delegate: 'a.mfp-gallery',
            fixedContentPos: true,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: true,
            removalDelay: 0,
            mainClass: 'mfp-fade',
            gallery:{enabled:true},
            callbacks: {
                buildControls: function() {
                    console.log('inside'); this.contentContainer.append(this.arrowLeft.add(this.arrowRight));
                }
            }
        });

        $('.mfp-image').magnificPopup({
            type: 'image',
            closeOnContentClick: true,
            mainClass: 'mfp-fade',
            image: {
                verticalFit: true
            }
        });

        $('.mfp-youtube, .mfp-vimeo, .mfp-gmaps').magnificPopup({
            disableOn: 700,
            type: 'iframe',
            mainClass: 'mfp-fade',
            removalDelay: 0,
            preloader: false,
            fixedContentPos: false
        });

        /*----------------------------------------------------*/
        /*   Swipe Slider
         /*----------------------------------------------------*/
        window.mySwipe = new Swipe(document.getElementById('slider'), {
            startSlide: 2,
            speed: 400,
            auto: 3000,
            continuous: true,
            disableScroll: false,
            stopPropagation: false,
            callback: function(index, elem) {},
            transitionEnd: function(index, elem) {}
        });

        /*----------------------------------------------------*/
        /*   Accordians & Toggles
         /*----------------------------------------------------*/

        $('.panel-group').on('shown.bs.collapse', function (e) {
            $(e.target).parent().addClass('active_acc');
        });
        $('.panel-group').on('hidden.bs.collapse', function (e) {
            $(e.target).parent().removeClass('active_acc');
        });

        /*----------------------------------------------------*/
        /*   Popover
        /*----------------------------------------------------*/
        $('[data-toggle="popover"]').popover()
        /* ------------------ End Document ------------------ */

        $("body").tooltip({
            selector: '[data-toggle="tooltip"]'
        });
    });
})(this.jQuery);

$(document).ready(function() {

    /*=================
     *   Contact Form
     * #contact
     ===================*/

    try{
        jQuery('#contact').validate({
            submitHandler: function(form) {
                jQuery('#contact .message').hide();
                var ajaxurl = 'contact.php';
                var data = {
                    action: 'contact_us',
                    datas: jQuery(form).serialize()
                };

                jQuery.ajax({
                    type: 'POST',
                    url: ajaxurl,
                    data: data,
                    success: function(response){
                        jQuery('#contact .message').text(response.error).css({'display' : 'inline-block'});
                    },
                    dataType: 'json'
                });
                return false;
            },
            rules: {
                c_name: {
                    required: true,
                    minlength: 3
                },
                c_mail: {
                    required: true,
                    email: true
                },
                c_subject: {
                    required: true,
                    minlength: 6
                },
                c_message:{
                    required: true,
                    minlength: 20
                }
            }
        });
    }catch(e){

    }

    /*============
     BUTTON UP
     * ===========*/
    var btnUp = $('<div/>', {'class':'btntoTop'});
    btnUp.appendTo('body');
    $(document)
        .on('click', '.btntoTop', function() {
            $('html, body').animate({
                scrollTop: 0
            }, 700);
        });

    $(window)
        .on('scroll', function() {
            if ($(this).scrollTop() > 200)
                $('.btntoTop').addClass('active');
            else
                $('.btntoTop').removeClass('active');
        });
});


/**
 * jQuery Plugin to obtain touch gestures from iPhone, iPod Touch, iPad, and Android mobile phones
 * Common usage: wipe images (left and right to show the previous or next image)
 *
 * @author Andreas Waltl, netCU Internetagentur (http://www.netcu.de)
 */
(function($){$.fn.touchwipe=function(settings){var config={min_move_x:20,min_move_y:20,wipeLeft:function(){},wipeRight:function(){},wipeUp:function(){},wipeDown:function(){},preventDefaultEvents:true};if(settings)$.extend(config,settings);this.each(function(){var startX;var startY;var isMoving=false;function cancelTouch(){this.removeEventListener('touchmove',onTouchMove);startX=null;isMoving=false}function onTouchMove(e){if(config.preventDefaultEvents){e.preventDefault()}if(isMoving){var x=e.touches[0].pageX;var y=e.touches[0].pageY;var dx=startX-x;var dy=startY-y;if(Math.abs(dx)>=config.min_move_x){cancelTouch();if(dx>0){config.wipeLeft()}else{config.wipeRight()}}else if(Math.abs(dy)>=config.min_move_y){cancelTouch();if(dy>0){config.wipeDown()}else{config.wipeUp()}}}}function onTouchStart(e){if(e.touches.length==1){startX=e.touches[0].pageX;startY=e.touches[0].pageY;isMoving=true;this.addEventListener('touchmove',onTouchMove,false)}}if('ontouchstart'in document.documentElement){this.addEventListener('touchstart',onTouchStart,false)}});return this}})(jQuery);

//////////////////////////결제 스트립트 시작 //////////////////////////////

function premiumService(e, a){
   var IMP = window.IMP; // 생략가능
   IMP.init("imp86249353"); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
   
   IMP.request_pay({
       pg : 'inicis', // version 1.1.0부터 지원.
       pay_method : 'card',
       merchant_uid : 'ORD20180131-0000011',
       name : '프리미엄 서비스 결제',
       /* amount : 1000, */
       amount : a,
       buyer_email : 'iamport@siot.do',
       buyer_name : '홍길동',
       buyer_tel : '010-1234-5678',
       buyer_addr : '서울특별시 강남구',
       buyer_postcode : '123-456'
      
   }, function(rsp) {
       if ( rsp.success ) {
           var msg = '결제가 완료되었습니다.';
           msg += '고유ID : ' + rsp.imp_uid;
           msg += '상점 거래ID : ' + rsp.merchant_uid;
           msg += '결제 금액 : ' + rsp.paid_amount;
           msg += '카드 승인번호 : ' + rsp.apply_num;
           
           if(a == 30000){
              p_code = "PC1";
              document.location.href = "paymentInsert.tat?m_code="+e+"&"+"p_code="+p_code;   
           } else if(a == 80000){
              p_code = "PC3";
              document.location.href = "paymentInsert.tat?m_code="+e+"&"+"p_code="+p_code;
           } else if(a == 150000){
              p_code = "PC6";
              document.location.href = "paymentInsert.tat?m_code="+e+"&"+"p_code="+p_code;
           } else if(a == 290000){
              p_code = "PC12";
              document.location.href = "paymentInsert.tat?m_code="+e+"&"+"p_code="+p_code;
           } 
           
           changePage();
           
           /*document.location.href = "paymentInsert.tat?m_code="+e;*/
           
       } else {
           var msg = '결제에 실패하였습니다.';
           var p_code;
           msg += '내용 : ' + rsp.error_msg;           
       }
       alert(msg);
   });

   } 
//////////////////////////결제 스트립트 끝 //////////////////////////////

/* Sign up test */

// 회원가입 함수
/*$('#insertBtn').on('click',function(){
   $('#memberInsert').submit();
});*/

// 로그인 함수
$('#loginForm').on('click',function(){
   $('#memberLogin').submit();
});

$('#searchPW').on('click',function(){
   $('#search1').submit();
});



$( "#insertBtn" ).click(function( event ) {
   var p1 = $('#m_email').val();
   var p2 = $('#m_pwd').val();
   var p3 = $('#m_pwd2').val();
   var p4 = $('#m_name').val();
   var p5 = $('#m_birth').val();
   var p6 = $('#m_gender').val();
   
  if(p1 == "" || p2 == "" || p3 == "" || p4 == "" || p5 == "" || p6 == ""){
     alert("값을 입력해주세요.");
     $('#upForm').click();
  } else {
     $('#memberInsert').submit();
  }
    event.preventDefault();

});

// 비밀번호(정규식) 유효성 검사
$(function(){   
   $('#m_pwd').blur(function(){
      var regexp =/^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{8,}$/;
      v = $(this).val();
      
      if(regexp.test(v)) {
         $('#chkMsg2').text("정확한 입력방식입니다!!");
         $('#chkMsg2').css("color", "green");
         $('#insertBtn').attr("disabled", false);   
      } else {
         $('#chkMsg2').text("영문+숫자(기호)조합으로 8자 이상 입력해야합니다. Ex) test12345");
         $('#chkMsg2').css("color", "red");
         $('#insertBtn').attr("disabled", true);
         //$('#user_name').focus();
      }
         
   });
});

// 비밀번호 확인 유효성 검사
$(function(){
   $("#m_pwd2").blur(function(){
      var p1=$("#m_pwd").val(), p2=$("#m_pwd2").val();
      if((p1!=p2 && p1 == "") || p2 == ""){
         $('#chkMsg3').text("비밀번호가 일치하지 않습니다.")
         $('#chkMsg3').css("color", "red");
         $('#insertBtn').attr("disabled", true);
         $('#changePwd').attr("disabled", true);
         //$("#password").focus();
      } else {
         $('#chkMsg3').text("비밀번호가 일치합니다.")
         $('#chkMsg3').css("color", "green");
         $('#insertBtn').attr("disabled", false);
         $('#changePwd').attr("disabled", false);
      }
   });

});

// 회원 이름 유효성 검사
$(function(){
   $('#m_name').blur(function(){
      var regexp =/^[가-힣]{2,4}|[a-zA-Z]{5,20}\s[a-zA-Z]{5,20}$/;
      v = $(this).val();
      
      if(regexp.test(v)) {
         $('#chkMsg4').text("정확한 입력방식입니다!!")
         $('#chkMsg4').css("color", "green");
         $('#insertBtn').attr("disabled", false);
      } else {
         $('#chkMsg4').text("실명을 입력해주세요!! Ex) 홍길동")
         $('#chkMsg4').css("color", "red");
         $('#insertBtn').attr("disabled", true);
         //$('#user_name').focus();
      }
      
   });
});

//회원 이메일 유효성 검사
$(function(){
   $('#m_email').blur(function(){
      var regexp = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
      v = $(this).val();
      
      if(regexp.test(v)) {
         $('#chkMsg1-1').text("정확한 입력방식입니다!!")
         $('#chkMsg1-1').css("color", "green");
         $('#insertBtn').attr("disabled", false);
      } else {
         $('#chkMsg1-1').text("빈칸이거나 형식에 맞지 않습니다!! Ex) test@test.com")
         $('#chkMsg1-1').css("color", "red");
         $('#insertBtn').attr("disabled", true);
         //$('#user_name').focus();
      }
      
   });
});

$(function() {
   if($('#tcheck').is(":checked") == false){
      $('#insertBtn').attr("disabled", true);
   } else {
      $('#insertBtn').attr("disabled", false);
   }
});

//이메일 중복체크 스트립트 //
$("#m_email").on("keyup",function(){
   $.ajax({
         url:"main/checkemailDup.tat",
         data : {m_email : $("#m_email").val()},
         dataType: "json",
         success:function(data){
            if(data.isUsable == true){ // viewName을 활용한 방식
               $('#chkMsg1').text("사용가능한 이메일입니다.");
               $('#chkMsg1').css("color", "green");
            } else {               
               $('#chkMsg1').text("중복된 이메일입니다.");
               $('#chkMsg1').css("color", "red");
               $('#insertBtn').attr("disabled", true);
            }
            
         }, error : function(error, msg){
            console.log(error+"\n"+msg);
         }
         
      });
      
   });

// 페이스북 로그인 연동 스크립트

function fbLogoutUser() {
   FB.logout(function(response) {
        alert("로그아웃 되었습니다!");   
    });
}

function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);
    
    // for FB.getLoginStatus().
    if (response.status === 'connected') {
      // Logged into your app and Facebook.
      testAPI();
      // $('#fb_logout').show();
    } else {
       
      // The person is not logged into your app or we are unable to tell.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into this app.';
    }
  }

  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
      
    });
  }

  window.fbAsyncInit = function() {
    FB.init({
      appId      : '1760717560675869',
      cookie     : false,  // enable cookies to allow the server to access 
                          // the session
      xfbml      : true,  // parse social plugins on this page
      version    : 'v2.8' // use graph api version 2.8
    });

    // Now that we've initialized the JavaScript SDK, we call 
    // FB.getLoginStatus().  This function gets the state of the
    // person visiting this page and can return one of three states to
    // the callback you provide.  They can be:
    //
    // 1. Logged into your app ('connected')
    // 2. Logged into Facebook, but not your app ('not_authorized')
    // 3. Not logged into Facebook and can't tell if they are logged into
    //    your app or not.
    //
    // These three cases are handled in the callback function.

//    FB.getLoginStatus(function(response) {
//      statusChangeCallback(response);
//    });
   
  };

  // Load the SDK asynchronously
  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

  // Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  
  function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
      console.log('Successful login for: ' + response.name);
      document.getElementById('status').innerHTML =
        'Thanks for logging in, ' + response.name + '!';
    });
    FB.api(
          '/me',
          'post',
          {"fields":"id,name,address,birthday,email,age_range,gender"},
          function(response) {
           console.log("확인!"+response.password);
           
           document.location.href = "Flogin.tat?m_email="+response.email+"&"+
           "m_name="+response.name;
           
          }
          );
  }
  
/////// 구글 로그인 부분 연동 시작 /////////
  var googleClicked=false;
  function GoogleLogin()
  {
     googleClicked=true;
  }
  function onSignIn(googleUser) {
     if (googleClicked) {    
     // Useful data for your client-side scripts:
          var profile = googleUser.getBasicProfile();
          
          console.log("ID: " + profile.getId()); // Don't send this directly to your server!
          console.log('Full Name: ' + profile.getName());
          console.log('Given Name: ' + profile.getGivenName());
          console.log('Family Name: ' + profile.getFamilyName());
          console.log("Image URL: " + profile.getImageUrl());
          console.log("Email: " + profile.getEmail());
          
          // The ID token you need to pass to your backend:
          var id_token = googleUser.getAuthResponse().id_token;
          console.log("ID Token: " + id_token);
          
          location.href = "Glogin.tat?m_email="+profile.getEmail()+"&"+"m_name="+profile.getName();
          
          // 
          
          // $('#glogout').show();
     
        };
     }  
        /*function glogout() {
             document.location.href = "https://www.google.com/accounts/Logout?" +
                   "continue=https://appengine.google.com/_ah/logout?continue=http://localhost:8088/TAT";
            }*/
  /////// 구글 로그인 부분 연동 끝 /////////
  function useableBtn(e) {
     document.location.href = "daybyday.tat?m_code="+e;
     console.log("기간 메소드!");
  }
  // 템플릿 댓글 수정 함수 //
  function UpdateReply() {
   $('.UpdateReply').submit();
}
  
  // 둘러보기 댓글 수정 함수 //
  function UpdateEditReply() {
      $('.UpdateEditReply').submit();
   }
  
// 메인 리턴 함수 //
function mainReturn() {
   var pageSwap = window.location.href.substring(window.location.href.indexOf("/TAT/")+5);
   $("#MainReturn").val(pageSwap);

   $("#MainReturn").click();
   //console.log(pageSwap);
   //$('#MainReturn').click();
}