<%--
  Created by IntelliJ IDEA.
  User: victor_planning
  Date: 2021-11-11
  Time: 오후 4:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <jsp:include page="/WEB-INF/jsp/inc/front_meta.jsp"/>
    <link rel="import" href="header.html">

    <!-- ================== CSS STYLE ================== -->
    <!-- Reset CSS -->
    <link rel="stylesheet" href="static/css/default.css">
    <link rel="stylesheet" href="static/css/common.css">
    <!-- Swiper CSS -->
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="static/css/header.css">
    <link rel="stylesheet" href="static/css/footer.css">
    <link rel="stylesheet" href="./static/css/join_member.css">
    <!-- ================ //CSS STYLE ================== -->

  <title>쇼핑몰 회원가입 | NORAN</title>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/inc/header.jsp"/>
<section id="container" class="container">
    <header>
        <h2 class="tit">회원가입</h2>
        <div class="depth">
            <ul class="clear">
                <li>01 약관동의</li>
                <li class="active">02 정보입력</li>
                <li>03 가입완료</li>
            </ul>
        </div>
    </header>
    <main>
        <h3>기본정보</h3>
        <span class="important"><strong class="imp_icon">&#42;</strong> 표시는 반드시 입력하셔야 하는 항목입니다.</span>
        <div class="table_wrap">
            <table>
                <colgroup>
                    <col/>
                    <col/>
                </colgroup>
                <tbody>
                <tr>
                    <th><strong class="imp_icon">&#42;</strong><label for="userId">아이디</label></th>
                    <td><input type="text" id="userId" required></td>
                </tr>
                <tr>
                    <th><strong class="imp_icon">&#42;</strong><label for="userPw">비밀번호</label></th>
                    <td><input type="password" id="userPw" required></td>
                </tr>
                <tr>
                    <th><strong class="imp_icon">&#42;</strong><label for="userRePw">비밀번호 확인</label></th>
                    <td><input type="password" id="userRePw" required></td>
                </tr>
                <tr>
                    <th><strong class="imp_icon">&#42;</strong><label for="userName">이름</label></th>
                    <td><input type="text" id="userName" required></td>
                </tr>
                <tr>
                    <th><label for="userMail">이메일</label></th>
                    <td>
                        <div class="mail_txt">
                            <input type="email" id="userMail">
                            <select id="emailDomain" name="emailDomain" class="chosen-select">
                                <option value="self">직접입력</option>
                                <option value="naver.com">naver.com</option>
                                <option value="hanmail.net">hanmail.net</option>
                                <option value="daum.net">daum.net</option>
                                <option value="nate.com">nate.com</option>
                                <option value="hotmail.com">hotmail.com</option>
                                <option value="gmail.com">gmail.com</option>
                            </select>
                        </div>
                        <div class="mail_check">
                            <input type="checkbox" id="accept_mail">
                            <label for="accept_mail">정보/이벤트 메일 수신에 동의합니다.</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th><label for="userPhone">휴대폰번호</label></th>
                    <td>
                        <div class="phone_txt">
                            <input type="tel" id="userPhone" placeholder="- 없이 입력하세요.">
                        </div>
                        <div class="phone_check">
                            <input type="checkbox" id="accept_phone">
                            <label for="accept_phone">정보/이벤트 SMS 수신에 동의합니다.</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th><label for="userAddress">주소</label></th>
                    <td>
                        <input type="text" id="userAddress">
                        <button>우편번호 검색</button>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="btn_join">
            <button class="join_before">취소</button>
            <button class="join_accept">회원가입</button>
        </div>
    </main>
</section>
<jsp:include page="/WEB-INF/jsp/inc/footer.jsp"/>
</body>
</html>
