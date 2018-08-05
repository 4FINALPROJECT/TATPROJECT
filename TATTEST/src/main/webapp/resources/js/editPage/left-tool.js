function testdrag(){

   var mulitTop = 0;
   var mulitLeft = 0;
   var true_chk = [];
   var true_count = 0;
   
$(".edit-wrap").mousedown(function(e){
   if($("#multiborder").length > 0){
      
      $("#multiborder").remove();
      testdrag();
   }
   
   $(".total_tool").css("display" , "none");
   $("#item_inpo").css("display" , "none");
   $(".inpo_menu").css("display" , "none");
   $("#title_controller").css("display" , "none");
   
   $(".upDateBorder").remove();
   
   true_count = 0;
   
   true_chk.pop();
   
   var selectLeft = e.pageX;
   var selectTop = e.pageY;
   
   var $multiselected = $("<div id='multiselect'>");
   $multiselected.css({"border":"2px dashed black","position":"absolute","transform-origin":"top left","background":"rgba(206,246,245,0.2)"});
   $(".edit-wrap").append($multiselected.css({"top":e.pageY-50,"left":e.pageX}));
   
   $(".edit-wrap").mousemove(function(e) {
      
      if(e.pageX > selectLeft && e.pageY > selectTop){
         
         $multiselected.css("transform","rotate(0deg)");
         $multiselected.css("width",e.pageX-selectLeft);
         $multiselected.css("height",e.pageY-selectTop);
         
         mulitTop = parseInt($multiselected.offset().top) + parseInt($multiselected.css("height"));
         mulitLeft = parseInt($multiselected.offset().left) + parseInt($multiselected.css("width"));
         
      } else if(e.pageX < selectLeft && e.pageY > selectTop){
         
         $multiselected.css("transform","rotate(90deg)");
         $multiselected.css("width",e.pageY-selectTop);
         $multiselected.css("height",-(e.pageX-selectLeft));
         
         mulitTop = parseInt($multiselected.offset().top) + parseInt($multiselected.css("width"));
         mulitLeft = parseInt($multiselected.offset().left) + parseInt($multiselected.css("height"));
         
      } else if(e.pageX < selectLeft && e.pageY < selectTop) {
         
         $multiselected.css("transform","rotate(180deg)");
         $multiselected.css("width",-(e.pageX-selectLeft));
         $multiselected.css("height",-(e.pageY-selectTop));
         
         mulitTop = parseInt($multiselected.offset().top) + parseInt($multiselected.css("height"));
         mulitLeft = parseInt($multiselected.offset().left) + parseInt($multiselected.css("width"));
         
      } else if(e.pageX > selectLeft && e.pageY < selectTop) {
         
         $multiselected.css("transform","rotate(270deg)");
         $multiselected.css("width",-(e.pageY-selectTop));
         $multiselected.css("height",e.pageX-selectLeft);
         
         mulitTop = parseInt($multiselected.offset().top) + parseInt($multiselected.css("width"));
         mulitLeft = parseInt($multiselected.offset().left) + parseInt($multiselected.css("height"));
         
      }
      $("div[data-obj-no*=data-]").each(function(){
         
         if(parseInt($multiselected.offset().top) < parseInt($(this).offset().top) &&
               parseInt($(this).offset().top) < mulitTop &&
               parseInt($multiselected.offset().left) < parseInt($(this).offset().left) && 
               parseInt($(this).offset().left) < mulitLeft){
            
            $(this).attr("multichk","true");
            
         } else {
            
            $(this).attr("multichk","false");
            
         }
         
      });
   });
   $(".edit-wrap").mouseup(function(e) {
      
      var min_topcheck = 0;
      var min_leftcheck = 0;
      var max_topcheck = 0;
      var max_leftcheck = 0;
      var widthcheck = 0;
      var heightcheck = 0;
      var data_counts = 0;
      
      $("div[data-obj-no*=data-]").each(function(){
         
         if($(this).attr("multichk") == "true"){
            
            var topcheck = $(this).offset().top;
            var leftcheck = $(this).offset().left;
            
            if(topcheck > max_topcheck){
               
               max_topcheck = topcheck;
               
               if(min_topcheck == 0){
                  min_topcheck = topcheck;
                  widthcheck = $(this).css("width");
               }
               
            } else if(min_topcheck > topcheck){
               
               min_topcheck = topcheck;
               widthcheck = $(this).css("width");
               
            }
            
            if(leftcheck > max_leftcheck){
               
               max_leftcheck = leftcheck;
               
               if(min_leftcheck == 0){
                  
                  min_leftcheck = leftcheck;
                  heightcheck = $(this).css("height");
                  
               }
               
            } else if(min_leftcheck > leftcheck){
               
               min_leftcheck = leftcheck;
               heightcheck = $(this).css("height");
               
            }
            
            data_counts++;
            true_chk.push($(this).attr("data-obj-no"));
         }
         
      });
      var $multiborder = $("<div id='multiborder'>");
      $multiborder.css({"position":"absolute" ,
         "top" : min_topcheck-50 ,
         "left" : min_leftcheck ,
         "width" : max_leftcheck - min_leftcheck + parseInt(widthcheck) ,
         "height" : max_topcheck - min_topcheck + parseInt(heightcheck) ,
         "border" : "1px dashed black",
         "cursor" : "move"});
      
      if(data_counts > 1){
         if($("#multiborder").length > 0){
            $("#multiborder").remove();
         }
         
         $(".edit-wrap").append($multiborder);
      }
      
      $("#multiselect").remove();
      
      var trueParent=false;
      
      var OriginerTop = [];
      var OriginerLeft = [];
      var CalculationTop = 0;
      var CalculationLeft = 0;

      $("#multiborder").mousemove(function(){
    	  $("#multiborder").mousedown(function(){
    	      $(".edit-wrap").off("mousedown");
    	      $(".edit-wrap").off("mousemove");
    	  });

         $("#multiborder").on("mousemove");

         $("#multiborder").draggable({
            containment : ".edit-view-body",
            start : function(e,ui){
               
               CalculationTop = parseInt($multiborder.offset().top);
               CalculationLeft = parseInt($multiborder.offset().left);
               
               $("div[data-obj-no*=data-]").each(function(){
                  if($(this).attr("data-obj-no") == true_chk[true_count]){
                  if(ui.helper.offset().top <= $(this).offset().top &&
                		  $(this).offset().top >= ui.helper.offset().top + ui.helper.css("height") &&
                		  ui.helper.offset().left <= $(this).offset().left &&
                		  $(this).offset().left >= ui.helper.offset().left + ui.helper.css("width")){
                      OriginerTop.push(parseInt($(this).offset().top));
                      OriginerLeft.push(parseInt($(this).offset().left));
                	  
                	  ui.helper.append($(this).clone().css({
                          "background" : "rgb(193,231,67,0.3)",
                          "top" : $(this).offset().top - ui.helper.offset().top,
                          "left" : $(this).offset().left - ui.helper.offset().left,
                          "width" : $(this).css("width"),
                          "height" : $(this).css("height")
                          }));
                	  true_count = 0;
                	  
                  } else {
                	  
                	  ++true_count;
                	  
                  }
                	 //console.log(ui.helper.offset().top);
                     OriginerTop.push(parseInt($(this).offset().top));
                     OriginerLeft.push(parseInt($(this).offset().left));
                     
                     trueParent = $(this).parent().attr("class").split(" ");
                     
                     ui.helper.append($(this).clone().css({
                        "background" : "rgb(193,231,67,0.3)",
                        "top" : $(this).offset().top - ui.helper.offset().top,
                        "left" : $(this).offset().left - ui.helper.offset().left,
                        "width" : $(this).css("width"),
                        "height" : $(this).css("height")
                        }));
                  }
               });
            },
            stop : function(e,ui){
            		//console.log(ui.helper.children());
                  for(var i in OriginerTop){
                     $("."+trueParent[0]).children("div").each(function(){
                        if($(this).attr("data-obj-no") == true_chk[i]){
                           $(this).offset({top : OriginerTop[i] - (CalculationTop - parseInt(ui.helper.offset().top)),
                              left : OriginerLeft[i] - (CalculationLeft - parseInt(ui.helper.offset().left))});
                        }
                     });
                  }
               ui.helper.remove();
               testdrag();
            }
         });
      });
      $("#multiborder").mouseout(function(){
    	  $(".edit-wrap").on("mousedown");
          $(".edit-wrap").on("mousemove");
      });
   });
});

}

window.onblur = function() {
//   $("#objectId").attr("value",null);
   $("#multiselect").remove();
   event.stopImmediatePropagation();
   return;
}
$("div[id*=left_main]").each(function(){
   $(this).click(function(e){
	  $(".upDateBorder").remove();
      $("#item_inpo").css("display" , "none");
      $(".inpo_menu").css("display" , "none");
      $("#title_controller").css("display" , "none");
      
      var mainid_chk = $(this).attr("id").substr($(this).attr("id").lastIndexOf("_")+1,10);
      
      $(".total_tool").css("display" , "none");
      
      if(mainid_chk == "folder"){
         
         $("#tool_menu").css("display","inline");
         
      } else if (mainid_chk == "background") {
         
         $("#tool_menu2").css("display","inline");
         
      } else if (mainid_chk == "plus") {
         
         $("#tool_menu3").css("display","inline");
         dragevent();
         $("#multiborder").remove();
         
      } else if (mainid_chk == "upload") {
         
         $("#tool_menu4").css("display","inline");
         
      }
      
   });
   
});
var toolmenu_chk;
$("td[id*=category]").click(function(e){
   
   if($(this).attr("id") == "category3-1"){
      $("#tooltip").text(" 텍스트는 우 클릭 폰트 사이즈 변경을 이용해 주세요 ");
      $("#tooltip").css({"top" : e.pageY , "left" : e.pageX+30 , "display" : "inline"});
      $("#tooltip").fadeOut(3000 , function(){$(this);});
   } 

   toolmenu_chk = $(this).attr("id").substr($(this).attr("id").lastIndexOf("y")+1,4);
      $(".content").css("display","none");
   $("div[id*=tool_menu]").each(function(){
      
      $("#tool_menu"+toolmenu_chk).css({"display":"block"});
      
      if(toolmenu_chk == "3-14"){
         
         $("#tool_menu3-14").children("div").off("mousedown");
         
      }
      
   });
});

$("#tool_menu3-14").children("div").click(function(){

   var menu_clone = $(this).clone();
   
   menu_clone.attr("class","titleMenu");
   
   $(".edit-view-head").children().each(function(){
      if($(".edit-view-head").children().attr("class") == "titleMenu"){
         $(this).remove();
      }
   });
   
   var menu_td = menu_clone.children().children().children();
   
   for(var i = 0 ; i < $(".tat-my-page-list").children("div").length ; i++){
	   if(i < 4){
		   menu_td.children().eq(i).text($(".tat-my-page-list").children("div").eq(i).text());   
	   }
   }
   
   menu_td.children().css({"width":"25%","height":"100px"});
   
   menu_clone.children().css({"text-align":"center","width":parseInt($(".edit-view-head").css("width")) - 6});
   
   $(".edit-view-head").append(menu_clone.css({"position":"absolute" , "top" : parseInt($(".edit-view-head-wrap").css("height")) - parseInt(menu_td.children().css("height")) - 6 }));
   
   $(".edit-view-head").children($("div[class*=titleMenu]")).each(function(){
      
    $(this).click(function(){
    	
       $(".upDateBorder").remove();
       $(".total_tool").css("display" , "none");
       $("#item_inpo").css("display","none");
       $(".inpo_menu").css("display","none");
       
       $("#title_controller").css({"display" : "inline-block" , "top" : parseInt($(this).offset().top)-80 , "left" : $(this).offset().left }); 
       
    });
    
       $(this).mousedown(function(){
          event.stopPropagation();
       });
       
    });
   
});

//$("#btn_skin1").mouseover(function(){
//	event.stopPropagation();
//});

// 배경화면 변경 스크립트
function changeimg(cimg){
    editWrap[0].style.backgroundImage="url("+cimg+")";
    //console.log(editWrap[0].outerHTML);
}

var edit_height = parseInt($(".edit-view-head-wrap").css("height"));
var edit_top = parseInt($(".edit-view-head-wrap").offset().top);

function dragevent(){
   
var counts = [0];

var resizeOpts = { 
  handles: "all" ,autoHide:true
};

$("#tool_menu3").children().children('div').draggable({
                helper: "clone",
                scroll : false,
                start: function(e , ui) {
                   counts[0]++;
                   }
                });
        $(".edit-wrap").droppable({
        drop: function(e, ui){
           if(ui.draggable.hasClass("dragTEXT") ||
                  ui.draggable.hasClass("btn_float") ||
                  ui.draggable.hasClass("item-Img") ||
                  ui.draggable.hasClass("Gallery-Img") ||
                  ui.draggable.hasClass("box_text") ||
                  ui.draggable.hasClass("interactive")) {
           id_count++;
           stackData = "add";
         if((edit_height + edit_top) > e.pageY){
            $(".edit-view-head").append(ui.helper.clone(true).css({"top":e.pageY-80,"left":e.pageX-40}).attr({"data-obj-no":"data-"+id_count , "data-kind" : "head" , "data-stack" : stackData}));
         } else {
            $(".edit-view-body").append(ui.helper.clone(true).css({"top":parseInt(ui.helper.css("top"))-85,"left":e.pageX-180}).attr({"data-obj-no":"data-"+id_count , "data-kind" : "body" , "data-stack" : stackData}));
         }

        $(".edit-wrap .dragTEXT").addClass("item-"+counts[0]);
        $(".edit-wrap .btn_float").addClass("item-"+counts[0]);
        $(".edit-wrap .item-Img").addClass("item-"+counts[0]);
        $(".edit-wrap .Gallery-Img").addClass("item-"+counts[0]);
        $(".edit-wrap .interactive").addClass("item-"+counts[0]);
        $(".edit-wrap .box_text").addClass("item-"+counts[0]);
     
        
     stackEvent();
     objectEvent();
     
     $("#tool_menu3").css("display","none");
     $("div[data-obj-no*=data-]").each(function(){
        $(this).mousedown(function(){
           event.stopPropagation();
        });
     });
     
     $(".edit-wrap .item-"+counts[0]).removeClass("dragTEXT ui-draggable ui-draggable-dragging");
     $(".edit-wrap .item-"+counts[0]).removeClass("btn_float ui-draggable ui-draggable-dragging");
     $(".edit-wrap .item-"+counts[0]).removeClass("item-Img ui-draggable ui-draggable-dragging");
     $(".edit-wrap .item-"+counts[0]).removeClass("Gallery-Img ui-draggable ui-draggable-dragging");
     $(".edit-wrap .item-"+counts[0]).removeClass("interactive ui-draggable ui-draggable-dragging");
     $(".edit-wrap .item-"+counts[0]).removeClass("box_text ui-draggable ui-draggable-dragging");
     
    make_draggable($(".item-"+counts[0]));
    $(".imgSize-"+counts[0]).resizable(resizeOpts);     
            }

            }
     });
        var zIndex = 0;
        function make_draggable(elements){
              elements.draggable({
              containment:'parent',
              start:function(e,ui){ui.helper.css('z-index',++zIndex); },
              drag:function(e,ui){
                 $(".objectData_txt").eq(3).attr("value", ui.helper.offset().left);
                  $(".objectData_txt").eq(4).attr("value", ui.helper.offset().top);
                 },
              stop:function(e,ui){
                 testdrag();
              }
              });
           }
}
