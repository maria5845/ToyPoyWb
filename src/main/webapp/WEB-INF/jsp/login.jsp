<%--
  Created by IntelliJ IDEA.
  User: victor_planning
  Date: 2021-11-05
  Time: 오후 2:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="static/css/default.css">
    <link rel="stylesheet" href="static/css/login.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    <title>GYMTEM</title>
</head>
<body>
<header class="clear">
    <h1 class="logo"><img src="static/images/logo_tem.png" alt="gymtem" /></h1>
    <div class="search_wrap">
        <fieldset>
            <legend>검색영역</legend>
            <label for="search_bar" class="blind">검색</label>
            <input type="text" id="srch_bar" placeholder="검색어를 입력하세요."/>
            <button type="submit" class="btn_srch"><img src="static/images/btnSearch.png" alt="검색"></button>
        </fieldset>
    </div>
    <div class="myMenu">
        <ul class="clear">
            <li><a href="#">로그인</a></li>
            <li><a href="#">마이페이지</a></li>
            <li><a href="#">장바구니</a></li>
        </ul>
    </div>
</header>
<nav>
    <div class="nav_wrap">
        <ul class="gnb clear">
            <li><a href="#">전체물품</a></li>
            <li><a href="#">핫딜</a></li>
            <li><a href="#">추천</a></li>
            <li><a href="#">새물품</a></li>
            <li><a href="#">이벤트</a></li>
            <li><a href="#">식단플랜</a></li>
            <li><a href="#">근처 헬스장</a></li>
        </ul>
    </div><!-- //nav_wrap -->
</nav>
<main>
    <section id="login_wrap">
        <h2 class="fb">로그인</h2>
        <form>
            <div class="id_wrap">
                <p><label for="userId">아이디</label></p>
                <input type="text" id="userId" />
            </div>
            <div class="pw_wrap">
                <p><label for="userPw">비밀번호</label></p>
                <input type="password" id="userPw" />
            </div>
            <div class="login_check">
                <span>
                    <input type="checkbox" id="loginSet">
                    <label for="loginSet">아이디저장</label>
                </span>
                <span>
                    <input type="checkbox" id="remember_login">
                    <label for="remember_login">로그인 유지</label>
                </span>
            </div>
        </form>
        <button class="btn_login">로그인</button>
        <ul class="login_list">
            <li><a href="#">회원가입</a></li>
            <li><a href="#">아이디 찾기</a></li>
            <li><a href="#">비밀번호 재설정</a></li>
        </ul>
    </section>
</main>
<footer>
    <div class="footer_wrap">
        <div class="info_list">
            <ul clas="clear">
                <li><a href="#">이용약관</a></li>
                <li><a href="#">개인정보처리방침</a></li>
                <li><a href="#">홈페이지소개</a></li>
                <li><a href="#">앱다운로드</a></li>
            </ul>
        </div>
        <div class="info_box">
            <p>상호명 : <span class="fb">GYMTEM</span></p>
            <p>대표자 : <span class="fb">홍길동</span></p>
            <p>사업자등록번호 : <span class="fb">123-45-6789</span></p>
            <p>통신판매업신고번호 : 2014 호</p>
            <p>서울지점 : 서울시 강남구 봉은사로 154 3층</p>
            <p><a href="mailto:abcdd@abcd">abcdd@abcd</a></p>
            <p>이곳의 모든 저작권은 홍길동에게 있습니다.</p>
        </div>
    </div><!-- //footer_wrap -->
</footer>
</body>
</html>