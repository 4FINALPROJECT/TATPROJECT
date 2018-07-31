
var bodysize = parseInt($(".edit-view-body-wrap").css("height"));
var objectBottomTop;
$(function(){

   testdrag();
   test345435();
   // 부트 스트랩
   //console.log($("#objectId").attr("value"));
    $("input[class*=form-control]").ColorPicker({
       onSubmit : function (hsb, hex, rgb, el) {
          $ (el) .val (hex);
          $ (el) .ColorPickerHide ();
       },
       onBeforeShow : function () {
          $ (this) .ColorPickerSetColor (this.value);
       }
    });
});

$(".edit-view-body").resizable({handles : "s" ,
   
   minHeight : test345435(),
   
   start : function(){
      
      test345435();
      
      $("#multiselect").remove();
      
      $(".edit-wrap").off("mousedown");
      $(".edit-wrap").off("mousemove");
      
   },
   stop : function(){
      $("div[data-obj-no*=data-]").each(function(e){
         if(objectBottomTop > parseInt($(this).parent().css("height"))){
            $(".edit-view-body").css("height",bodysize);
         }
      });
      testdrag();
   },
   
});

function test345435(){
   
   bodysize = parseInt($(".edit-view-body-wrap").css("height"));
   
   $("div[data-obj-no*=data-]").each(function(){
      objectBottomTop = parseInt($(this).css("height"))+parseInt($(this).offset().top)-(parseInt($(".edit-view-head-wrap").css("height"))+parseInt($(".edit-view-head-wrap").offset().top));
   });
   
   return bodysize;
   
}
      var keys = [];
      var moveEle;
      
       $(document).keydown(function(e) {
          if(event.keyCode == 18 || event.keyCode == 9) {
             clearInterval(movePlane);
             delete keys[e.keyCode];
          } else if($("#objectId").val() != "") {
             if(event.ctrlKey && event.keyCode == 67) {
                clone_start();
             } else if(event.ctrlKey && event.keyCode == 86) {
                clone_end();
             } else if(event.keyCode == 46) {
                Object_Delete();
             } else if($('#item_inpo').css("display") == "none") {
                if ( event.keyCode == 18 ) {
                   keys[e.keyCode] = false;
                } else if ( event.keyCode == 9 ) {
                   keys[e.keyCode] = false;
                } else {
                   keys[e.keyCode] = true;
                }
             } else if($('#item_inpo').css("display") != "none") {
                return;
             }
          } else {
             return;
          }
          
       });
       $(document).keyup(function(e) {
          if(event.keyCode == 18 || event.keyCode == 9){
             clearInterval(movePlane);
             delete keys[e.keyCode];
          } else if($('#item_inpo').css("display") == "none"){
             delete keys[e.keyCode];
          } else {
             return;
          }
       });
            function movePlane(e) {

                var moveevent = moveEle;

                   for (var direction in keys) {
                      
                       if (!keys.hasOwnProperty(direction)) {
                          continue;
                       } else if (direction == 37) {
                          if(parseInt($(moveevent).parent().offset().left) < parseInt($(moveevent).offset().left)){
                             $(moveevent).animate({left: "-=1"}, 0);
                             //stackMove = $(moveevent);
                             //stackMoveEvent(stackMove);
                          }
                       } else if (direction == 38) {
                          if(parseInt($(moveevent).parent().offset().top) < parseInt($(moveevent).offset().top)){
                             $(moveevent).animate({top: "-=1"}, 0);
                             //stackMove = $(moveevent);
                             //stackMoveEvent(stackMove);
                          }
                       } else if (direction == 39) {
                          if(parseInt($(moveevent).parent().offset().left)+parseInt($(moveevent).parent().css("width"))  > parseInt($(moveevent).offset().left) + parseInt($(moveevent).css("width"))+6) {
                             $(moveevent).animate({left: "+=1"}, 0);
                             //stackMove = $(moveevent);
                             //stackMoveEvent(stackMove);
                          }
                           
                       } else if (direction == 40) {
                          if(parseInt($(moveevent).parent().offset().top) + parseInt($(moveevent).parent().css("height")) > parseInt($(moveevent).offset().top) + parseInt($(moveevent).css("height")) ){
                             $(moveevent).animate({top: "+=1"}, 0);
                             //stackMove = $(moveevent);
                             //stackMoveEvent(stackMove);
                          }
                       }
                       
                       
                       
                       $(".upDateBorder").remove();
                       $("#multiborder").remove();
                       
                       $("#item_inpo").css("display","none");
                       $(".inpo_menu").css("display","none");
                       
                       $(".objectData_txt").eq(3).attr("value", parseInt($(moveEle).offset().left));
                       $(".objectData_txt").eq(4).attr("value", parseInt($(moveEle).offset().top));
                       
                      }
            }
   
   var w , h , x , y;
   function objectEvent(){
      $("div[data-obj-no*=data-]").each(function(){
       $(this).on("click",function(e){
         
          $("#multiborder").remove();
          
          var rotation = $(this).css("transform");
          if(rotation !== 'none'){
             var obj_rotation = rotation.split('(')[1].split(')')[0].split(',');
             var a = obj_rotation[0];
               var b = obj_rotation[1];
               var angle = Math.round(Math.atan2(b, a) * (180/Math.PI));
          } else {
             $(".objectData_txt").eq(0).attr("value", 0);
          }
          
          w = parseInt($(this).width());
          h = parseInt($(this).height());
          x = parseInt($(this).offset().left);
          y = parseInt($(this).offset().top);
          
             moveEle = this;
             
             setInterval(movePlane,5);
             
           $(".upDateBorder").remove();
           
           var $upborder = $("<div>");
           
           var tooltip = $("<div>");
           
           $upborder.attr("class","upDateBorder");
           
           $upborder.css({"width":w,
                       "height":h,
                       "border":"2px dashed paleturquoise",
                       "position":"absolute"
                     });
           
           $upborder.css({"width":"+=10",
                       "height":"+=10",
                       "top" : "-=5",
                       "left" : "-=5"
                     });

           $(this).append($upborder);
           if($(this).children().eq(0).prop('tagName') != "SPAN"){
              
              border_resize();
              
           }
           
         $("#item_inpo").css("display","none");
         $(".inpo_menu").css("display","none");
         $("#objectId").attr("value",$(this).attr("data-obj-no"));
         
         $(".objectData_txt").eq(0).attr("value", angle);
         if($(this).children("span").length < 1){
              $(".objectData_txt").eq(1).attr({"value" : w , "readonly" : false});
              $(".objectData_txt").eq(2).attr({"value" : h ,"readonly" : false});
           } else {
              $(".objectData_txt").eq(1).attr({"value" : w , "readonly" : true});
              $(".objectData_txt").eq(2).attr({"value" : h , "readonly" : true});
              
           }
           $(".objectData_txt").eq(3).attr("value", x);
           $(".objectData_txt").eq(4).attr("value", y);
           
           console.log($("#objectId").val());
           
       });
       $(this).bind("contextmenu",function(event){
          
         event.preventDefault();
         
         w = Math.floor($(this).width());
          h = Math.floor($(this).height());
          x = Math.floor($(this).offset().left);
          y = Math.floor($(this).offset().top);
          
         var objText = $(this).children().text().trim();
         var rinksource = $(this).children().attr('onclick');
         var objBackColor = $(this).children().css('background').substr(0,$(this).children().css('background').lastIndexOf(")")+1);
         var objBorder = $(this).children().css("border").split(" ");
         var objBorder_color = objBorder[2]+objBorder[3]+objBorder[4];
         var objFontFamily = $(this).children().css('font-family');
         var objFontSize = $(this).children().css("font-size").substr(0,$(this).children().css("font-size").lastIndexOf("p"));
         var objFontColor = $(this).children().css('color');
         
         $(".upDateBorder").remove();
         $("#objectId").attr("value",$(this).attr("data-obj-no"));
         $("#item_inpo").css("display","inline-block");
         $(".inpo_menu").css("display","none");
         $("#item_inpo").css({"top" : $(this).offset().top-40,"left" : $(this).offset().left});
           $("#text_inpo").children('input').attr("value",objText);

           if($(this).children().eq(0).attr("type") != "button"){
              $("#item_rink").css("display","none");
           } else {
              $("#item_rink").css("display","inline-block");
           }
           
           $("#rink_inpo").children('input').attr("value",rinksource);
           
           $("#type_inpo").children('input').eq(0).attr("value",rgb2hex(objBackColor));
           $("#type_inpo").children('input').eq(1).attr("value",rgb2hex(objBorder_color));
           $("#type_inpo").children('input').eq(2).attr("value",objBorder[1]);
           $("#type_inpo").children('input').eq(3).attr("value",objBorder[0]);
           if($("#type_inpo").children('select').children().attr("value") == objFontFamily){
              
           } else {
              $("#type_inpo").children('select').append("<option value="+objFontFamily+">"+objFontFamily+"</option>");
           }
           $("#type_inpo").children('input').eq(4).attr("value",objFontSize);
           $("#type_inpo").children('input').eq(5).attr("value",rgb2hex(objFontColor));
           $(".objectData_txt").eq(0).attr("value", "");
           
           if($(this).children("span").length < 1){
              $(".objectData_txt").eq(1).attr({"value" : w , "readonly" : false});
              $(".objectData_txt").eq(2).attr({"value" : h , "readonly" : false});
           } else {
              $(".objectData_txt").eq(1).attr({"value" : w , "readonly" : true});
              $(".objectData_txt").eq(2).attr({"value" : h , "readonly" : true});
           }
           $(".objectData_txt").eq(3).attr("value", x);
           $(".objectData_txt").eq(4).attr("value", y);
         });
       });
   }
   function rgb2hex(rgb) {
       rgb = rgb.match(/^rgba?\((\d+),\s*(\d+),\s*(\d+)(?:,\s*(\d+))?\)$/);
       function hex(x) {
           return ("0" + parseInt(x).toString(16)).slice(-2);
       }
       return "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]);
   }
   
   var originer_id;
   
   var clone_id;
   
   function clone_start(){
      
      originer_id = $("div[data-obj-no*="+$("#objectId").val()+"]");
      
      clone_id = originer_id.clone();
      
   }
   function clone_end(){
      
      id_count++;
      
      $("#objectId").attr("value",clone_id.attr("data-obj-no"));
      
      clone_id = clone_id.css({"top":"+=10","left":"+=10"}).attr("data-obj-no","data-"+id_count);
      
      $("div[data-obj-no*="+$("#objectId").val()+"]").parent().append(clone_id.draggable());
      
      make_draggable($(".item-1"));

      stackEvent();
      
      objectEvent();
      
      $("div[data-obj-no*=data-]").each(function(){
          $(this).mousedown(function(){
             event.stopPropagation();
          });
       });
      
      clone_id = clone_id.clone();
      
      var zIndex = 0;
       function make_draggable(elements){
             elements.draggable({
             containment:'parents',
             start:function(e,ui){ui.helper.css('z-index',++zIndex); },
             drag:function(e,ui){
                $(".objectData_txt").eq(3).attr("value", ui.helper.offset().left);
                 $(".objectData_txt").eq(4).attr("value", ui.helper.offset().top);
                },
             stop:function(e,ui){}
             });
          }
   }
   $("#item_copy").click(function(){
      clone_start();
    });
    $("#item_copystart").click(function(){
       clone_end();
    });
    $("#item_copycontent").hover(function(){
        console.log("ctrl+D");
    });
    function border_resize(){
      $(".upDateBorder").mousemove(function(e){
          var x_offset = e.pageX;
          var y_offset = e.pageY;
          
          var border_width = $(this).width();
          var border_height = $(this).height();
          
          if($(".objectData_txt").eq(0).val() == 90){
             if(x <= x_offset && x_offset <= x+10 && y <= y_offset && y_offset <= y+10){
                 
                 $(".upDateBorder").css("cursor","nw-resize");
                 
              } else if(x+border_height-10 <= x_offset && x_offset <= x+border_height && y+border_width-10 <= y_offset && y_offset <= y+border_width){
                 
                 $(".upDateBorder").css("cursor","nw-resize");
                 
              } else if(x+border_height-10 <= x_offset && x_offset <= x+border_height && y-10 <= y_offset && y_offset <= y){
                 
                 $(".upDateBorder").css("cursor","ne-resize");
                 
              } else if(x <= x_offset && x_offset <= x+10 && y+border_width-10 <= y_offset && y_offset <= y+border_width){
                 
                 $(".upDateBorder").css("cursor","ne-resize");
                 
              } else {
                 
                 if (x <= x_offset && x_offset <= x+20){
                     $(".upDateBorder").css("cursor","w-resize");
                  } else if(x+border_height-20 <= x_offset && x_offset <= x+border_height){
                     $(".upDateBorder").css("cursor","w-resize");
                  } else if(y <= y_offset && y_offset <= y+20){
                     $(".upDateBorder").css("cursor","n-resize");
                  } else if(y+border_width-20 <= y_offset && y_offset <= y+border_width){
                     $(".upDateBorder").css("cursor","n-resize");
                  } else {
                     $(".upDateBorder").css("cursor","auto");
                  }
              }
          } else {
             if(x <= x_offset && x_offset <= x+10 && y <= y_offset && y_offset <= y+10){
                 
                 $(".upDateBorder").css("cursor","nw-resize");
                 
              } else if(x+border_width-10 <= x_offset && x_offset <= x+border_width && y+border_height-10 <= y_offset && y_offset <= y+border_height){
                 
                 $(".upDateBorder").css("cursor","nw-resize");
                 
              } else if(x+border_width-10 <= x_offset && x_offset <= x+border_width && y-10 <= y_offset && y_offset <= y){
                 
                 $(".upDateBorder").css("cursor","ne-resize");
                 
              } else if(x <= x_offset && x_offset <= x+10 && y+border_height-10 <= y_offset && y_offset <= y+border_height){
                 
                 $(".upDateBorder").css("cursor","ne-resize");
                 
              } else {
                 
                 if (x <= x_offset && x_offset <= x+20){
                     $(".upDateBorder").css("cursor","w-resize");
                  } else if(x+border_width-20 <= x_offset && x_offset <= x+border_width){
                     $(".upDateBorder").css("cursor","w-resize");
                  } else if(y <= y_offset && y_offset <= y+20){
                     $(".upDateBorder").css("cursor","n-resize");
                  } else if(y+border_height-20 <= y_offset && y_offset <= y+border_height){
                     $(".upDateBorder").css("cursor","n-resize");
                  } else {
                     $(".upDateBorder").css("cursor","auto");
                  }
              }
          };
          
          });
      var objOrigin;
      $(".upDateBorder").resizable({
         handles : "all",
         start : function(e,ui){ objOrigin = $("div[data-obj-no*="+$("#objectId").val()+"]"); },
         stop : function(e,ui){

            var top1 = parseInt(objOrigin.offset().top) - parseInt($(this).offset().top);
            var left1 = parseInt(objOrigin.offset().left) - parseInt($(this).offset().left);
            
            $("div[data-obj-no*="+$("#objectId").val()+"]").children().css("width", parseInt($(this).css("width")));
            $("div[data-obj-no*="+$("#objectId").val()+"]").children().css("height", parseInt($(this).css("height")));
            $("div[data-obj-no*="+$("#objectId").val()+"]").css("top", parseInt(objOrigin.css("top")) - top1);
            $("div[data-obj-no*="+$("#objectId").val()+"]").css("left", parseInt(objOrigin.css("left")) - left1);
            $(".upDateBorder").remove();
         }
      });
   };
   
    function Object_Delete(){
       if( $("#objectId").val() == "" ) {
          alert("선택을 해야 합니다.");
       } else {
          stackData = "del";
          
          var ObjDel = $("div[data-obj-no*="+$("#objectId").val()+"]");
             
            swap = ObjDel.attr("data-stack", "del");

     
            if ( stackCount > -2 && stackCount < 4 ) {
               stackCount++;
               stack.push(swap);
            } else if ( stackCount == 4 ) {
               stack.push(swap);
               stack.shift();
            }
            
            
           stackCount--;
           redoCount++;
           stack.pop();
           stackRedo.push(swap);
           editWrap.find(swap).remove();
            
            tmp = swap;
            
            $(".objectData_txt").eq(1).attr({"value" : "0" , "readonly" : true});
            $(".objectData_txt").eq(2).attr({"value" : "0" , "readonly" : true});
            $(".objectData_txt").eq(3).attr("value" , "0");
            $(".objectData_txt").eq(4).attr("value" , "0");
       }
       
    }
    
    $("#item_delete").click(function(e){
       Object_Delete();
    });
    $("#item_order").hover(function(){
        console.log("정렬");
    });
    $("#item_inpo").children().children().children().children('div').each(function(){
       $("#item_text").on("click",function(){
          $(".inpo_menu").css("display","none");
          $("#text_inpo").css("display","inline-block");
          $("#text_inpo").css({
             "top":$("#item_inpo").offset().top + 40,
             "left":$("#item_inpo").offset().left});
             });
       $("#item_rink").on("click",function(){
          $(".inpo_menu").css("display","none");
          $("#rink_inpo").css("display","inline-block");
          $("#rink_inpo").css({
             "top":$("#item_inpo").offset().top + 40,
             "left":$("#item_inpo").offset().left});
             });
       $("#item_type").on("click",function(){
          $(".inpo_menu").css("display","none");
          $("#type_inpo").css("display","inline-block");
          $("#type_inpo").css({
             "top":$("#item_inpo").offset().top + 40,
             "left":$("#item_inpo").offset().left});
             });
       $("#item_close").on("click",function(){close();});
    });
    function EnterUpDate_rotate(){
       if(event.keyCode == 13){
          $("div[data-obj-no*="+$("#objectId").val()+"]").css({"transform":"rotate("+$(".objectData_txt").eq(0).val()+"deg)"})
       }
    }
    function EnterUpDate_width(){
       if(event.keyCode == 13){
          $("div[data-obj-no*="+$("#objectId").val()+"]").children().css("width",$(".objectData_txt").eq(1).val());
       }
    };
    function EnterUpDate_height(){
       if(event.keyCode == 13){
          console.log($("#objectId").val());
          console.log($(".objectData_txt").eq(2).val());
          $("div[data-obj-no*="+$("#objectId").val()+"]").children().css("height",$(".objectData_txt").eq(2).val());
       }
    };
    function EnterUpDate_text(){
       if(event.keyCode == 13){
          $("div[data-obj-no*="+$("#objectId").val()+"]").children().text($("#text_inpo").children("input").eq(0).val());
       }
    }
    function EnterUpDate_URL(){
       if(event.keyCode == 13){
          $("div[data-obj-no*="+$("#objectId").val()+"]").children().attr("onclick",$("#rink_inpo").children("input").eq(0).val());
       }
    }
    function EnterUpDate_fSize(){
       if(event.keyCode == 13){
          $("div[data-obj-no*="+$("#objectId").val()+"]").children().css("font-size",$("#type_inpo").children("input").eq(4).val() + "px");   
       }
    }
    function close(){
        $("#item_inpo").css("display","none");
        $(".inpo_menu").css("display","none");
    }
    $("#type_inpo").children("select").click(function(){
       $("div[data-obj-no*="+$("#objectId").val()+"]").children().css("font-family",$(this).val());
    });
    
    var rinkdata;
    
    $(".rink_select").children().click(function(){
       
       rinkdata = $("input[name*=select_chk]:checked").val();
       
       if(rinkdata == "https://www.naver.com/" || rinkdata == "https://www.google.co.kr/"){
          
          rinkdata = $("input[name*=select_chk]:checked").val();
          
          $("#directly_select").attr("disabled","disabled");
          $("#directly_select").attr("value","직접 입력");
          
          $(".rink_select").css("display","none");
          $(".rink_page").css("display","block");
          
       } else {
          
          $("#directly_select").attr("value","");
          $("#directly_select").attr("disabled",false);
          
       }
       
    });
    
    $(".rink_page").children().click(function(){
       
       if($(this).val() == "window.open()"){
          
          rinkdata = "window.open("+rinkdata+")";
          
       } else {
          
          rinkdata = "location.href="+rinkdata;
          
       }
       $(".rink_select").css("display","none");
       $(".rink_page").css("display","none");
       $(".rink_submit").css("display","inline");
       
       
    });
    
    $(".rink_submit").click(function(){
       $("div[data-obj-no*="+$("#objectId").val()+"]").children().attr("onclick",rinkdata);
    });
