<%--
  Created by IntelliJ IDEA.
  User: victor_planning
  Date: 2021-11-11
  Time: 오후 4:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./static/css/default.css">
  <link rel="stylesheet" href="./static/css/common.css">
  <link rel="stylesheet" href="./static/css/header.css">
  <link rel="stylesheet" href="./static/css/member.css">
  <title>회원가입 | NORAN</title>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/inc/header.jsp"/>
<main id="wrap" class="wrap">
  <div class="login_shop"><a href="join_shop.html">쇼핑몰 회원가입</a></div>
  <div class="sns_login login_naver"><a href="#">네이버 아이디 회원가입</a></div>
  <div class="sns_login login_kakao"><a href="#">카카오 아이디 회원가입</a></div>
</main>
<jsp:include page="/WEB-INF/jsp/inc/footer.jsp"/>
</body>
</html>
