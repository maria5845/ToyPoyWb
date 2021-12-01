<%--
  Created by IntelliJ IDEA.
  User: victor_planning
  Date: 2021-12-01
  Time: 오전 10:11
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
  <link rel="stylesheet" href="./static/css/best.css">
  <!-- ================ //CSS STYLE ================== -->


  <title>로그인 | NORAN</title>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/inc/header.jsp"/>
<main>
    <section class="best">
        <div class="inner">
            <div class="best_title">
                <h2 class="tit">베스트</h2>
                <!-- <div class="best_depth">
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Best</a></li>
                    </ul>
                </div> -->
                <!--//best_depth-->
                <nav class="best_gnb">
                    <ul>
                        <li><a href="#">리빙</a></li>
                        <li><a href="#">패션</a></li>
                        <li><a href="#">문구</a></li>
                        <li><a href="#">꽃</a></li>
                        <li><a href="#">식품</a></li>
                        <li><a href="#">반려동물</a></li>
                    </ul>
                </nav><!--//best_gnb-->
                <div class="best_list_align">
                    <ul>
                        <li><a href="#">신상품</a></li>
                        <li><a href="#">낮은가격</a></li>
                        <li><a href="#">높은가격</a></li>
                        <li><a href="#">인기상품</a></li>
                        <li><a href="#">사용후기</a></li>
                        <li><a href="#">조회수</a></li>
                    </ul>
                </div><!--//best_list_pick-->
            </div><!--//best_title-->
            <div class="best_container">
                <ul class="best_item_wrap">
                    <li>
                        <a href="#">
                            <div class="sale_badge">
                                <div class="sale_per">10<span class="ico_per">%</span></div>
                                <img src="../static/images/main_pd.jpg" alt="상품">
                            </div>
                            <div class="pd_txt">
                                <strong class="pd_tit">크리스마스 선물 조명 장식 용품 전구 인테리어 무드등 프로모션</strong>
                                <span class="pd_price">10,000</span><span>원</span>
                            </div>
                            <div class="pd_cart">
                                <button class="btn_cart"><img src="../static/images/ico_cart.png" alt="장바구니"/></button>
                                <button class="btn_like"><img src="../static/images/ico_heart.png" alt="찜하기"/></button>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="sale_badge">
                                <div class="sale_per">10<span class="ico_per">%</span></div>
                                <img src="../static/images/main_pd.jpg" alt="상품">
                            </div>
                            <div class="pd_txt">
                                <strong class="pd_tit">크리스마스 선물 조명 장식 용품 전구 인테리어 무드등 프로모션</strong>
                                <span class="pd_price">10,000</span><span>원</span>
                            </div>
                            <div class="pd_cart">
                                <button class="btn_cart"><img src="../static/images/ico_cart.png" alt="장바구니"/></button>
                                <button class="btn_like"><img src="../static/images/ico_heart.png" alt="찜하기"/></button>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="sale_badge">
                                <div class="sale_per">10<span class="ico_per">%</span></div>
                                <img src="../static/images/main_pd.jpg" alt="상품">
                            </div>
                            <div class="pd_txt">
                                <strong class="pd_tit">크리스마스 선물 조명 장식 용품 전구 인테리어 무드등 프로모션</strong>
                                <span class="pd_price">10,000</span><span>원</span>
                            </div>
                            <div class="pd_cart">
                                <button class="btn_cart"><img src="../static/images/ico_cart.png" alt="장바구니"/></button>
                                <button class="btn_like"><img src="../static/images/ico_heart.png" alt="찜하기"/></button>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="sale_badge">
                                <div class="sale_per">10<span class="ico_per">%</span></div>
                                <img src="../static/images/main_pd2.png" alt="상품">
                            </div>
                            <div class="pd_txt">
                                <strong class="pd_tit">건드 노래하는 곰인형 태태/곰인형 생일선물 조카선물 여친선물</strong>
                                <span class="pd_price">10,000</span><span>원</span>
                            </div>
                            <div class="pd_cart">
                                <button class="btn_cart"><img src="../static/images/ico_cart.png" alt="장바구니"/></button>
                                <button class="btn_like"><img src="../static/images/ico_heart.png" alt="찜하기"/></button>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="sale_badge">
                                <div class="sale_per">10<span class="ico_per">%</span></div>
                                <img src="../static/images/main_pd2.png" alt="상품">
                            </div>
                            <div class="pd_txt">
                                <strong class="pd_tit">건드 노래하는 곰인형 태태/곰인형 생일선물 조카선물 여친선물</strong>
                                <span class="pd_price">10,000</span><span>원</span>
                            </div>
                            <div class="pd_cart">
                                <button class="btn_cart"><img src="../static/images/ico_cart.png" alt="장바구니"/></button>
                                <button class="btn_like"><img src="../static/images/ico_heart.png" alt="찜하기"/></button>
                            </div>
                        </a>
                    </li>
                </ul>
            </div><!--//best_container-->
        </div>
    </section>
</main>
</body>
</html>
