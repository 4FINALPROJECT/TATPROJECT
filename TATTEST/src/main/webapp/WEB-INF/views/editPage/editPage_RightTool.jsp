<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<input id="objectId" type="hidden">
<div style="float: right;">
<div id="objectData">
    <img id="item_copy" src="${pageContext.request.contextPath}/resources/images/editPage/RightTool-img/copy.png">
    <img id="item_copystart" src="${pageContext.request.contextPath}/resources/images/editPage/RightTool-img/copystart.png"><br><br>
    <img id="item_copycontent" src="${pageContext.request.contextPath}/resources/images/editPage/RightTool-img/copycontent.png">
    <img id="item_delete" src="${pageContext.request.contextPath}/resources/images/editPage/RightTool-img/delete.png"><br><br>
    <img id="item_order" src="${pageContext.request.contextPath}/resources/images/editPage/RightTool-img/order.png"><br><br>
    <label>회전</label><br>
    <label class="objectData_name_txt">cº</label><input class="objectData_txt" type="number" min="0" max="359" value="0" step="0" onkeyup="EnterUpDate_rotate();"><br>
    <label>크기</label><br>
    <label class="objectData_name_txt">w</label><input class="objectData_txt" type="number" min="0" value="0" step="0" onkeyup="EnterUpDate_width();"><br>
    <label class="objectData_name_txt">h</label><input class="objectData_txt" type="number" min="0" value="0" step="0" onkeyup="EnterUpDate_height();"><br>
    <label>위치</label><br>
    <label class="objectData_name_txt">x</label><input class="objectData_txt" type="number" min="0" value="0" step="0" readonly><br>
    <label class="objectData_name_txt">y</label><input class="objectData_txt" type="number" min="0" value="0" step="0" readonly><br>
</div>
<table id="item_inpo">
        <thead>
            <tr>
                <th>
                    <div class="item_button" id="item_text"> 텍스트 </div>
                </th>
                <th>
                    <div class="item_button" id="item_rink"> 링크 </div>
                </th>
                <th>
                    <div class="item_button" id="item_type"> 속성 </div>
                </th>
                <th>
                    <div class="item_button" id="item_close"> 닫기 </div>
                </th>
            </tr>
        </thead>
    </table>
    
    <div class="inpo_menu" id="text_inpo" oncontextmenu="return false">
        <label class="inpo_menu_source_name" > 텍스트 </label><br>
        <input class="inpo_menu_source" type="text" style="width : 90px;" onkeyup="EnterUpDate_text();"><br><br>
    </div>
    <div class="inpo_menu" id="rink_inpo" oncontextmenu="return false">
        <label class="inpo_menu_source_name" > URL </label><br>
        <div class="rink_select" style="font-size : 17px; float : right;">
           <input type="radio" name="select_chk" value="https://www.naver.com/"> 네이버<br>
           <input type="radio" name="select_chk" value="https://www.google.co.kr/"> 구글<br>
           <input type="radio" name="select_chk" value=""> <input id="directly_select" class="inpo_menu_source" type="url" value="직접 입력" onkeyup="EnterUpDate_URL();" disabled="disabled"><br>
        </div>
        <div class="rink_page" style="font-size : 17px; float : right;">
           <input type="radio" name="rink_chk" value="새창"> 새창으로 열기<br>
           <input type="radio" name="rink_chk" value="현재"> 현재페이지로 열기<br>
        </div>
        <div class="rink_submit">
           <input style="width : 60px;" type="button" value="적용">
        </div>
    </div>
    <div class="inpo_menu" id="type_inpo" oncontextmenu="return false">
        <label class="inpo_menu_source_name" > 색상 </label><br>
        <input class="inpo_menu_source form-control" type="text"><br>
        <label class="inpo_menu_source_name" > 테두리 </label><br>
        <input class="form-control" type="text" id="border_color">
        <input type="text" style="width : 70px;"id="border_style">
        <input style="width : 65px;" type="text" id="border_size">
        <br>
        <label class="inpo_menu_source_name" > 폰트 변경 </label><br>
        <select class="inpo_menu_source">
           <option value="돋움" >돋움</option>
           <option value="궁서체" >궁서체</option>
           <option value="바탕체" >바탕체</option>
           <option value="맑은고딕" >맑은고딕</option>
        </select><br>
        <!-- <input class="inpo_menu_source" type="text"><br> -->
        <label class="inpo_menu_source_name" > 폰트 사이즈 </label><br>
        <input class="inpo_menu_source" type="number" onkeyup="EnterUpDate_fSize();"><br>
        <label class="inpo_menu_source_name" > 폰트 색상 </label><br>
        <input class="inpo_menu_source form-control" type="text"><br><br>
    </div>
    <div class="inpo_menu" id="free_type" oncontextmenu="return false">
       <label class="free_source_name"> 색상 </label>
       <select class="free_source">
          <option value="빨강"> 빨강색 </option>
          <option value="주황"> 주황색 </option>
          <option value="노랑"> 노랑색 </option>
          <option value="초록"> 초록색 </option>
          <option value="파랑"> 파랑색 </option>
          <option value="보라"> 보라색 </option>
          <option value="검정"> 검정색 </option>
          <option value="하양"> 하양색 </option>
          <option value="분홍"> 분홍색 </option>
       </select>
       <label class="free_source_name" > 테두리 </label><br>
       <select class="free_source">
          <option value="0.5px"> 0.5px </option>
          <option value="1px"> 1px </option>
          <option value="1.5px"> 1.5px </option>
          <option value="2px"> 2px </option>
          <option value="2.5px"> 2.5px </option>
          <option value="3px"> 3px </option>
       </select>
       <input type="text" value="solid">
       <select class="free_source">
          <option value="빨강"> 빨강색 </option>
          <option value="주황"> 주황색 </option>
          <option value="노랑"> 노랑색 </option>
          <option value="초록"> 초록색 </option>
          <option value="파랑"> 파랑색 </option>
          <option value="보라"> 보라색 </option>
          <option value="검정"> 검정색 </option>
          <option value="하양"> 하양색 </option>
          <option value="분홍"> 분홍색 </option>
       </select>
        <br>
        <label class="free_source_name" > 폰트 변경 </label><br>
        <select class="free_source">
           <option value="돋움" >돋움</option>
           <option value="궁서체" >궁서체</option>
           <option value="바탕체" >바탕체</option>
           <option value="맑은고딕" >맑은고딕</option>
        </select><br>
        <label class="free_source_name" > 폰트 사이즈 </label><br>
        <input class="free_source" type="number" min="1" max="100" step="0" value="0"><br>
        <label class="free_source_name" > 폰트 색상 </label><br>
        <select class="free_source">
          <option value="빨강"> 빨강색 </option>
          <option value="주황"> 주황색 </option>
          <option value="노랑"> 노랑색 </option>
          <option value="초록"> 초록색 </option>
          <option value="파랑"> 파랑색 </option>
          <option value="보라"> 보라색 </option>
          <option value="검정"> 검정색 </option>
          <option value="하양"> 하양색 </option>
          <option value="분홍"> 분홍색 </option>
       </select>
       
    </div>
    <div id = "title_controller">
       <input type="button" value="외부 변경">
       <input type="button" value="내부 변경">
    </div>
    <div id = "tooltip">
    </div>
</div>


