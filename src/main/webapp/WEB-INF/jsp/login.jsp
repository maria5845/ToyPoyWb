<%--
  Created by IntelliJ IDEA.
  User: victor_planning
  Date: 2021-11-11
  Time: 오후 4:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="static/css/default.css">
    <link rel="stylesheet" href="static/css/common.css">
    <link rel="stylesheet" href="static/css/login.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    <title>로그인 | NORAN</title>
</head>
<body>
<div id="headers"></div>
<main>
    <section id="login_wrap">
        <h2 class="fb">로그인</h2>
        <form>
            <div class="id_wrap">
                <p><label for="userId">아이디</label></p>
                <input type="text" id="userId"/>
            </div>
            <div class="pw_wrap">
                <p><label for="userPw">비밀번호</label></p>
                <input type="password" id="userPw"/>
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
            <li><a href="member.html">회원가입</a></li>
            <li><a href="#">아이디 찾기</a></li>
            <li><a href="#">비밀번호 재설정</a></li>
        </ul>
    </section>
</main>
<div id="footers"></div>
</body>
<script src="static/common/jquery-3.6.0.min.js"></script>
</html>
