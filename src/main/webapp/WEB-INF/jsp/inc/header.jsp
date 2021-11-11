<%--
  Created by IntelliJ IDEA.
  User: victor_planning
  Date: 2021-11-11
  Time: 오후 4:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="clear">
  <h1 class="logo"><a href="#"><img src="./static/images/logo_tem.png" alt="NORAN"/></a></h1>
  <div class="search_wrap">
    <fieldset>
      <legend>검색영역</legend>
      <label for="srch_bar" class="blind">검색</label>
      <input type="text" id="srch_bar" placeholder="검색어를 입력하세요."/>
      <button type="submit" class="btn_srch"><img src="./static/images/btnSearch.png" alt="검색"></button>
    </fieldset>
  </div>
  <div class="myMenu">
    <ul>
      <li><a href="login.jsp">로그인</a></li>
      <li><a href="#">마이페이지</a></li>
      <li><a href="#">장바구니</a></li>
    </ul>
  </div>
</header>
<nav>
  <div class="nav_wrap">
    <div class="total_menu">
      <ul class="total_menu_tit">
        <li>
          <div class="gnb_con">
            <span></span>
            <span></span>
            <span></span>
          </div>
          <a href="#">전체물품</a>
          <ul class="total_menu_sub">
            <li><a href="#"><span class="fb">헬스용품</span></a></li>
            <li><a href="#"><span class="fb">기구</span></a></li>
            <li><a href="#"><span class="fb">보충제</span></a></li>
            <li><a href="#"><span class="fb">단백질 식품</span></a></li>
            <li><a href="#"><span class="fb">홈트레이닝</span></a></li>
            <li><a href="#"><span class="fb">다이어트 제품</span></a></li>
            <li><a href="#"><span class="fb">스포츠웨어</span></a></li>
            <li><a href="#"><span class="fb">건강식품</span></a></li>
          </ul>
        </li>
      </ul>
    </div>
    <div>
      <ul class="gnb clear">
        <li><a href="#">BEST</a></li>
        <li><a href="#">NEW</a></li>
        <li><a href="#">오늘의 추천</a></li>
        <li><a href="#">기획전</a></li>
        <li><a href="#">이벤트</a></li>
        <li class="time_sale fb"><a href="#">TIME SALE</a></li>
      </ul>
    </div>
  </div>
</nav>

