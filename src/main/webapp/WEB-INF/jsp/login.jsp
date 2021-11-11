<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <jsp:include page="/WEB-INF/jsp/inc/front_meta.jsp"/>
  <!-- ================== CSS STYLE ================== -->
  <!-- Reset CSS -->
  <link rel="stylesheet" href="./static/css/default.css">
  <link rel="stylesheet" href="./static/css/common.css">
  <link rel="stylesheet" href="./static/css/header.css">
  <link rel="stylesheet" href="./static/css/footer.css">
  <link rel="stylesheet" href="./static/css/login.css">
  <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
  <!-- ================ //CSS STYLE ================== -->
  <title>로그인 | NORAN</title>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/inc/header.jsp"/>
<main>
  <section id="login_wrap">
    <!--로그인-->
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
      <li><a href="<%=request.getContextPath()%>/join_agreement.do" class="login">회원가입</a></li>
      <li><a href="#">아이디 찾기</a></li>
      <li><a href="#">비밀번호 재설정</a></li>
    </ul>
  </section>
</main>
<jsp:include page="/WEB-INF/jsp/inc/footer.jsp"/>
</body>
</html>
