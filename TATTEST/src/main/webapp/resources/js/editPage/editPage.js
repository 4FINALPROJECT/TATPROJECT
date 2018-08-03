var stackCount = -1;
var stack = [];
var stackT = "";
var editWrap = $('.edit-wrap');
var tmp;
var stackRedo = [];
var redo;
var redoCount = -1;
var stackData;
var swap;
var stackDataChk;
var stackMove;
var stackMoveRedo;
var id_count;
var idCountFilter;

// var 변수를 만들어서 obj-no의 값이 있다면 담을 때마다 길이가 쌓임.
// if 문으로 idCountFilter가 0 보다 크다면 그 값은 -1을 하여 id_count로 하고 
// 아니면 else로 idCountFilter는 0이 되니까 -1로 해서 
// id_count는 -1로 시작.

$(function() {
	var id_x = 0;

	$("div[data-obj-no*=data-").each(function(){
		id_x = $(this).attr("data-obj-no").substr(5);
	});
	
	idCountFilter = id_x;
	
	
	if ( idCountFilter.length-1 > 0 ) {
		
		id_count = idCountFilter.length-1;
		
	} else {
		id_count = -1;
	}
	
	console.log(id_count);
	
});

$('.tat-head-hide').on('click',function(){
	$('.tat-head').slideToggle('slow');
});

$('.tat-my-page').on({
	"mouseenter" : function(){
		$(this).css({
           "background-color" : "#eaf7ff",
           "cursor" : "pointer"                 
        }),
        $(this).children('.mypage-viewList').css({
        	"background-color" : "#eaf7ff",
        	"color" : "coral"
        })
    },
    "mouseleave" : function(){
		$(this).css({
           "background-color" : "white",
           "color" : "black"
        }),
        $(this).children('.mypage-viewList').css({
        	"background-color" : "rgb(255, 255, 255)",
        	"color" : "coral"
        })
    },
	"click" : function(){
    	$('.tat-my-page-content').toggle();
        $(this).css({
        	"background-color" : "white",
        	"cursor" : "unset"
        }),
        $(this).children('.mypage-viewList').css({
        	"background-color" : "cornflowerblue",
        	"color" : "white"
        })
    }
    
});



$('.tat-head-content-center > div').on({
	"mouseenter" : function(){
		$(this).children().css({
			'transition-duration' : '5s',
			'display' : 'inline-block'
		}),			
		$(this).css({	
			'color' : '#4eb7f5'
		})
		
	},
	"mouseleave" : function(){
		$(this).css({
			'color' : 'black'
		}),
		$(this).children().css({
			'transition-duration' : '5s',
			'display' : 'none'
		})
	}
});

$('.tat-head-content-center > div:last-child').on({
	"mouseenter" : function(){
		$(this).css({	
			'color' : '#9a4cc6'
		}),
		$(this).children().css({
			'transition-duration' : '5s',
			'display' : 'inline-block'
		})
	},
	"mouseleave" : function(){
		$(this).css({
			'color' : 'black'
		}),
		$(this).children().css({
			'transition-duration' : '5s',
			'display' : 'none'
		})
	}
});
$('.tat-head-content-right > div').on({
	"mouseenter" : function(){
		$(this).css({
			'color' : '#4eb7f5'
		})
	},
	"mouseleave" : function(){
		$(this).css({
			'color' : 'black'
		})
	}
});
$('.tat-head-content-right > div:first-child').on({
	"mouseenter" : function(){
		$(this).css({
			'background' : '#4eb7f5',
			'color' : 'white'
		})
	},
	"mouseleave" : function(){
		$(this).css({
			'background' : 'royalblue',
			'color' : 'white'
		})
	}
});


function commitEvent() {
	var commit_check = confirm('게시 하시겠습니까?');
	
	if ( commit_check ) {
		
		$('#myModal').modal({
		    backdrop: 'static',
		    keyboard: false  // to prevent closing with Esc button (if you want this too)
		})
		
		// 모달창 열기
		$('#myModal').modal("show");
		// 반대로 모달상태를 전환함
		// $('#myModal').modal("toggle");
		
		$('html').click(function(e) { 
			if($(e.target).hasClass('modal')) { 
				var modalOut = confirm('저장을 취소 하시겠습니까?');
				if ( modalOut ) {
					// 모달창 닫기
					$('#myModal').modal("hide");
				} 
			}
		}); 
		
	} else {
		alert('게시 취소');
	}
}

function saveEvent() {
	var save_check = confirm('저장 하시겠습니까?');
	if ( save_check ) {
		alert('저장 완료!');
		$.ajax({
			url : "/TAT/edit/editOop.tat",
			data : { edit : editWrap.html() },
			dataType : "json",
			type : "POST",
			success : function(data) {
				console.log("파일 저장 성공 : "+data.editLog);
			}, error : function(data) {
				
			}
		});
	} else {
		alert('저장 취소!');
	}
}

function stackEvent() {
	stackT = editWrap.find( $("div[data-obj-no=data-"+ id_count+"]") );
	stackRedo = [];
	redoCount = -1;
    if ( stackCount > -2 && stackCount < 4 ) {
    	stackCount++;
		stack.push(stackT);
	} else if ( stackCount == 4 ) {
		stack.push(stackT);
		stack.shift();

		//console.log("스택 맨 끝 요소 캐치 : "+ stack[4][0].outerHTML);
	}
    tmp = stackT;
}

function undoEvent() {
	if ( stackCount > -1 && stackCount < 5 ) {

		stackCount--;
		redoCount++;
		tmp = stack.pop();
		stackRedo.push(tmp);
		editWrap.find(tmp).remove();

		//console.log("undo.pop 값 : "+ tmp[0].outerHTML);
		
		$(".objectData_txt").eq(1).attr({"value" : "0" , "readonly" : true});
        $(".objectData_txt").eq(2).attr({"value" : "0" , "readonly" : true});
        $(".objectData_txt").eq(3).attr("value" , "0");
        $(".objectData_txt").eq(4).attr("value" , "0");
	}
}

function redoEvent() {
	//console.log("------- redo -------");
	if ( stackCount > -2 || stackRedo.length > 0 ) {
		redoCount--;
		stackCount++;
		// 이새기
		redo = stackRedo.pop();
		tmp = redo;
		//console.log("redo.pop 값 : "+ redo[0].outerHTML);
		//console.log("tmp 값: "+ tmp[0].outerHTML);
		stack.push(tmp);

		redo.removeClass("item-1");
		
		redo.addClass("ui-draggable-handle item-1 ui-draggable-dragging");
		
		if (  redo.data("kind") == "body" ) {
			$(document).find('.edit-view-body').append(redo.draggable());
		} else if ( redo.data("kind") == "head" ) {
			$(document).find('.edit-view-head').append(redo.draggable());
		}
		
		objectEvent();
		make_draggable($(".item-1"));
		
		$("div[data-obj-no*=data-]").each(function(){
	         $(this).mousedown(function(){
	            event.stopPropagation();
	         });
	    });
	      
	    var zIndex = 0;
	    function make_draggable(elements){
	         elements.draggable({
	         containment:'parents',
	         start:function(e,ui){ui.helper.css('z-index',++zIndex); },
	         drag:function(e,ui) {
		            $(".objectData_txt").eq(3).attr("value", ui.helper.offset().left);
		            $(".objectData_txt").eq(4).attr("value", ui.helper.offset().top);
		         }, stop:function(e,ui){}
	         });
	   }
     	
	}
}


function stackMoveEvent() {
	console.log(stackMove);
	tmp = stackMove.attr("data-stack", "move");
	
	
	if( stackCount > -2 && stackCount < 4 ) {
		stackCount++;
		stack.push(tmp);
	} else if ( stackCount == 4 ) {
		stack.push(tmp);
		stack.shift();
	}

}


function moveUndo() {
	if ( stackCount > -1 && stackCount < 5 ) {
		stackCount--;
		redoCount++;
		tmp = stack.pop();
		stackRedo.push(tmp);
		editWrap.find(tmp).remove();
	}
}

function moveRedo() {
	if ( stackCount > -2 || stackRedo.length > 0 ) {
		
	}
}


//undo 뒤로가기
$('.tat-head-content-right > div:nth-child(6)').click(function(){
	if ( tmp == null ) {
		alert("기록이 없습니다.");
	} else {
		if ( tmp[0].dataset.stack == "add" ) {
			
			if ( stackCount == -1 ) {
				alert("기록이 없습니다.");
			} else {
				undoEvent();
			}
			
		}/*  else if ( tmp[0].dataset.stack == "move" ) {
			
			if ( stackCount == -1 ) {
				alert("기록이 없습니다.");
			} else {
				moveUndo();
			}
			
		} */ else {
		
			if ( redoCount == -1 ) {
				alert("기록이 없습니다.");
			} else {
				redoEvent();
			}
		}
	}

	
	
});


// redo 앞으로가기
$('.tat-head-content-right > div:nth-child(5)').click(function(){
	if ( tmp == null ) {
		alert("기록이 없습니다.");
	} else {
		if ( stackCount > -2 && stackCount < 5 ) {

			if ( tmp[0].dataset.stack == "add" ) {
				
				if ( redoCount == -1 ) {
					alert("기록이 없습니다.");
				} else {
					redoEvent();
				}
				
			}/*  else if ( tmp[0].dataset.stack == "move" ) {
				
				if ( stackCount == -1 ) {
					alert("기록이 없습니다.");
				} else {
					moveRedo();
				}
				
			}  */else {
				
				if ( redoCount == -1 ) {
					undoEvent();
				} else {
					alert("기록이 없습니다.");
				}

			}
		}
	}
});


$('#save-btn').on('click', function(){
	//console.log(editWrap.html());
	saveEvent();
});

$('#commit-btn').click(function(){
	commitEvent();
});

$('#tat-head-logo').on('click', function(){
	var siteOut = confirm('아직 저장을 안하셨습니다. 저장 하시겠습니까?');
	if ( siteOut ) {
		saveEvent();
		//location.href="/TAT/edit/Main.tat";
	} else {
		
	}
});


