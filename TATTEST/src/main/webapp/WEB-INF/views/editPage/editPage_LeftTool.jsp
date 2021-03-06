<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<div class="edit-left-tool-wrap">
<div class="edit-left-tool">

   <div id="left_main_folder">
      <i class="fas fa-folder" style="font-size: 35px;"></i>
   </div>
   <div id="left_main_background">
      <i class="far fa-image" style="font-size: 35px;"></i>
   </div>
   <div id="left_main_plus">
      <i class="fas fa-plus-circle" style="font-size: 35px;"></i>
   </div>
   <div id="left_main_upload">
      <i class="fas fa-question" style="width:35px; height:35px; font-size: 35px;"></i>
   </div>

   <div class="total_tool" id="tool_menu" style="background : #00aaaf; color: white;">
      <div class="category-name">
        <div id="category-1"><b>사이트 메뉴</b></div>
      </div>
      <div class="content" id="tool_menu-1" style="color: black;">
      <div class="pageHeader">사이트 메뉴</div>
        <div class="pageBody">페이지
                <div>HOME</div>
        </div>
        <div class="pageFooter">페이지 추가</div>
      </div>
   </div>


   <div class="total_tool" id="tool_menu2" style="background-color: #f8a239;">
      <table class="category-name" style="color: white;">
         <tr>
            <td id="category2-1"><b>페이지 배경</b></td>
         </tr>
         <tr>
            <td id="category2-2"><b>추천 배경</b></td>
         </tr>
      </table>

      <div class="content" id="tool_menu2-1">
         <br>페이지 배경 <br>
         <br> 
         <div>  <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/flower1.PNG"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/flower1.PNG')">
                <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/flower2.PNG"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/flower2.PNG')">
                <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/city1.PNG"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/city1.PNG')">
               <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/olives-3466908_1920.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/olives-3466908_1920.jpg')">
               <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/nightmare-3483459_1920.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/nightmare-3483459_1920.jpg')">
               <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/ship-3493887_1280.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/ship-3493887_1280.jpg')">
               <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/white-currant-3467373_1280.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/white-currant-3467373_1280.jpg')">
               <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/yacht-3480913_1280.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/yacht-3480913_1280.jpg')">
               
               <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/in-the-forest-506846_1280.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/in-the-forest-506846_1280.jpg')">
                <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/desktop-2697353_1280.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/desktop-2697353_1280.jpg')">
                <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/steel-3044493_1280.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/steel-3044493_1280.jpg')">
               <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/light-2828857_1280.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/light-2828857_1280.jpg')">
               <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/oil-etc-1193130_1280.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/oil-etc-1193130_1280.jpg')">
               <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/cloud-2667652_1280.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/cloud-2667652_1280.jpg')">
               <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/new-3050092_1280.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/new-3050092_1280.jpg')">
               <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/sunrise-1615649_1280.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/sunrise-1615649_1280.jpg')">
               
               <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/fish-2051227_1280.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/fish-2051227_1280.jpg')">
               <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/nature-3054223_1280.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/nature-3054223_1280.jpg')">
               <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/flowers-878822_1280.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/flowers-878822_1280.jpg')">
               <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/sea-980816_1280.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/sea-980816_1280.jpg')">
               <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/nature-3095900_1280.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/nature-3095900_1280.jpg')">
               <img class="LeftImg" src="../resources/images/editPage/LeftTool-img/Background/trickle-2450901_1280.jpg"
               onclick="changeimg('../resources/images/editPage/LeftTool-img/Background/trickle-2450901_1280.jpg')">
               
         </div>
               

      </div>

      <div id="tool_menu2-2" class="content">
         <br>추천 배경
         <div>
       	  <img class="LeftImg" src="../resources/images/portfolio/project1.jpg"
               onclick="changeimg('../resources/images/portfolio/project1.jpg')">
       	  <img class="LeftImg" src="../resources/images/portfolio/project2.jpg"
               onclick="changeimg('../resources/images/portfolio/project2.jpg')">
       	  <img class="LeftImg" src="../resources/images/portfolio/project3.jpg"
               onclick="changeimg('../resources/images/portfolio/project3.jpg')">
       	  <img class="LeftImg" src="../resources/images/portfolio/project4.jpg"
               onclick="changeimg('../resources/images/portfolio/project4.jpg')">
       	  <img class="LeftImg" src="../resources/images/portfolio/project5.jpg"
               onclick="changeimg('../resources/images/portfolio/project5.jpg')">
       	  <img class="LeftImg" src="../resources/images/portfolio/project6.jpg"
               onclick="changeimg('../resources/images/portfolio/project6.jpg')">
       	  <img class="LeftImg" src="../resources/images/portfolio/project7.jpg"
               onclick="changeimg('../resources/images/portfolio/project7.jpg')">
       	  <img class="LeftImg" src="../resources/images/portfolio/project8.jpg"
               onclick="changeimg('../resources/images/portfolio/project8.jpg')">
       	  <img class="LeftImg" src="../resources/images/portfolio/project9.jpg"
               onclick="changeimg('../resources/images/portfolio/project9.jpg')">
       	  <img class="LeftImg" src="../resources/images/portfolio/project10.jpg"
               onclick="changeimg('../resources/images/portfolio/project10.jpg')">
         </div>
      </div>
   </div>



   <div class="total_tool" id="tool_menu3" style="background-color: #3899ec;">
      <table class="category-name" style="color: #f5f5f5;">
         <tr>
            <td id="category3-1"><b>텍스트</b></td>
         </tr>
         <tr>
            <td id="category3-2"><b>이미지</b></td>
         </tr>
         <tr>
            <td id="category3-3"><b>갤러리</b></td>
         </tr>
         <tr>
            <td id="category3-4"><b>버튼</b></td>
         </tr>
         <tr>
            <td id="category3-5"><b>상자</b></td>
         </tr>
         <tr>
            <td id="category3-6"><b>메뉴</b></td>
         </tr>
      </table>

      <div id="tool_menu3-1" class="content">
         <br><h5>텍스트 추가</h5>
         <hr>    
         <h6>추천 디자인</h6>
         <hr style="border: solid 1px black;">
         <div class="dragTEXT">   
            <span style="font-family : 돋움; font-size: 36px;">제목 1</span>
         </div><br />

         <div class="dragTEXT">
            <span style="font-family : 돋움; font-size: 30px;">제목 2</span>
         </div><br />
       
       <div class="dragTEXT">
            <span style="font-family : 돋움; font-size: 26px;">제목 3</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family : 돋움; font-size: 21px;">제목 4</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family : 돋움; font-size: 18px;">제목 5</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family : 돋움; font-size: 15px;">제목 6</span>
         </div><br />
      
       <h6>제목</h6>
         <hr style="border: solid 1px black;">
      
         <div class="dragTEXT">
            <span style="font-family: serif; font-size: 30px;">코딩없는 디자인</span>
         </div><br />
      
       <div class="dragTEXT">
            <span style="font-family: monospace; font-size: 30px;">웹 디자인</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: sans-serif; font-size: 30px;">코딩없는 디자인</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: cursive; font-size: 30px;">웹 디자인</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: fantasy; font-size: 30px;">Syncronized</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: inherit; font-size: 30px;">T A T</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: 바탕체; font-size: 30px;">바탕체 제목</span>
         </div><br />
       
       <div class="dragTEXT">
            <span style="font-family: 굴림체; font-size: 30px;">굴림체 제목</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: 궁서체; font-size: 30px;">궁서체 제목</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: Arial Black; font-size: 30px;">Arial Black</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: Comic Sans MS; font-size: 30px;">Comic Sans MS</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: 돋움체; font-size: 30px;">돋움체 제목</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: 휴먼엽서체; font-size: 30px;">휴먼엽서체 제목</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: Andale Mono; font-size: 30px;">Andale Mono</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: Arial Narrow; font-size: 30px;">Arial Narrow</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: Bookman Old Style; font-size: 30px;">Bookman Old Style</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: Copperlate Gothic; font-size: 30px;">Copperlate Gothic</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: Courier; font-size: 30px;">Courier</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: Fixedsys; font-size: 30px;">Fixedsys</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: Impact; font-size: 30px;">Impact</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family: Lucida Console; font-size: 30px;">Lucida Console</span>
         </div><br />
         
         <h6>단락</h6>
         <hr style="border: solid 1px black;">
         
         <div class="dragTEXT">
            <span style="font-size: 25px; font-family: 궁서체;">단락 테스트 부분 입니다 추가 하시려면 끌어다가
                            사용해주세요.</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-size: 20px; font-family: 굴림체;">단락 테스트 부분 입니다 추가 하시려면 끌어다가
                            사용해주세요.</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-size: 23px; font-family: 바탕체;">단락 테스트 부분 입니다 추가 하시려면 끌어다가
                            사용해주세요.</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-size: 23px; font-family: cursive;">단락 테스트 부분 입니다 추가 하시려면 끌어다가
                            사용해주세요.</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-size: 21px; font-family: 궁서;">단락 테스트 부분 입니다 추가 하시려면 끌어다가
                            사용해주세요.</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-size: 21px; font-family: inherit;">단락 테스트 부분 입니다 추가 하시려면 끌어다가
                            사용해주세요.</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-size: 21px; font-family: monospace;">단락 테스트 부분 입니다 추가 하시려면 끌어다가
                            사용해주세요.</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family : 돋움; font-size: 24px;">단락 테스트 부분 입니다 추가 하시려면 끌어다가
                            사용해주세요.</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family : 돋움; font-size: 20px;">단락 테스트 부분 입니다 추가 하시려면 끌어다가
                            사용해주세요.</span>
         </div><br />
         
         <div class="dragTEXT">
            <span style="font-family : 돋움; font-size: 16px;">단락 테스트 부분 입니다 추가 하시려면 끌어다가
                            사용해주세요.</span>
         </div><br />
         
      </div>

      <div id="tool_menu3-2" class="content">
         <br>이미지
         <div class="item-Img">
            <img src="../resources/images/editPage/LeftTool-img/Image/img1.jpg" alt="">
         </div>
      </div>
      <div id="tool_menu3-3" class="content">
         <br>갤러리
         <div class="Gallery-Img" >
            <img src="../resources/images/editPage/LeftTool-img/Gallery/gallery1.png" alt="">
         </div>
      </div>
      <div id="tool_menu3-4" class="content">
         <br>버튼
            <div class="btn_float">
                <div class="btn_style">CLICK</div>
             </div>
         </div>
      <div id="tool_menu3-5" class="content">
         <br>
          <h4 style="text-align: center; margin-left: 25px;">상자</h4>
          <div class="box_text">
          <div id="box_skin1"> BOX </div>
          </div>
          <div class="box_text">
          <div id="box_skin2"> BOX </div>
          </div>
          <div class="box_text">
          <div id="box_skin3"> BOX </div>
          </div>
          <div class="box_text">
          <div id="box_skin4"> BOX </div>
          </div>
          <div class="box_text">
          <div id="box_skin5"> BOX </div>
          </div>
          <div class="box_text">
          <div id="box_skin6"> BOX </div>
          </div>
          <div class="box_text">
          <div id="box_skin7"> BOX </div>
          </div>
          <div class="box_text">
          <div id="box_skin8"> BOX </div>
          </div>
          <div class="box_text">
          <div id="box_skin9"> BOX </div>
          </div>
      </div>
      <div id="tool_menu3-6" class="content">
         <br>메뉴<br>
         <div class="titleMenu" style="width : 90%;">
            <table style = "font-size : 10px; text-align : center;">
               <tbody>
                  <tr>
                     <td style="border : 1px solid black; width : 70px;">HOME</td>
                     <td style="border : 1px solid black; width : 70px;">Page</td>
                     <td style="border : 1px solid black; width : 70px;">Page</td>
                     <td style="border : 1px solid black; width : 70px;">Page</td>
                  </tr>
               </tbody>
            </table>
         </div>
         <br>
         <div class="titleMenu" style="width : 90%;">
            <table style = "font-size : 10px; text-align : center; background : red;">
               <tbody>
                  <tr>
                     <td style="border : 1px solid black; width : 70px;">HOME</td>
                     <td style="border : 1px solid black; width : 70px;">Page</td>
                     <td style="border : 1px solid black; width : 70px;">Page</td>
                     <td style="border : 1px solid black; width : 70px;">Page</td>
                  </tr>
               </tbody>
            </table>
         </div>
      </div>

   </div>


   <div class="total_tool" id="tool_menu4">
      <table class="category-name">
         <tr>
            <td id="category4-1"><b> 키보드 </b><br>
            <br></td>
         </tr>
         <tr>
            <td id="category4-2"><b> 마우스 </b><br>
            <br></td>
         </tr>
         <tr>
            <td id="category4-3"><b> 단축키 </b><br>
            <br></td>
         </tr>
      </table>
      <div id="tool_menu4-1" class="content">
            키보드
            <div> 방향키로 아이템을 컨트롤 해보세요. </div>
      </div>
      <div id="tool_menu4-2" class="content">
            마우스
            <div> 마우스로 아이템의 위치를 컨트롤 해보세요. </div>
            <div> 멀티 컨트롤도 가능합니다. </div>
      </div>
      <div id="tool_menu4-3" class="content">
            단축키
            <div> 다향한 단축키로 복사,붙여넣기,삭제등을 컨트롤 해보세요. </div>
      </div>
   </div>
</div>
</div>