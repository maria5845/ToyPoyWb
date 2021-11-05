<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="static/css/default.css">
    <link rel="stylesheet" href="static/css/main.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    <title>메인 | GYMTEM</title>
</head>
<body>
<header class="clear">
    <h1 class="logo"><img src="static/images/main/logo_tem.png" alt="gymtem" /></h1>
    <div class="search_wrap">
        <fieldset>
            <legend>검색영역</legend>
            <label for="search_bar" class="blind">검색</label>
            <input type="text" id="srch_bar" placeholder="검색어를 입력하세요."/>
            <button type="submit" class="btn_srch"><img src="static/images/main/btnSearch.png" alt="검색"></button>
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
    <ul class="gnb clear">
        <li class="total_menu_tit">
            <div class="gnb_con">
                <span></span>
                <span></span>
                <span></span>
            </div>
            <a href="#">전체물품</a>
            <ul class="total_menu">
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
        <li><a href="#">최저가</a></li>
        <li><a href="#">추천</a></li>
        <li><a href="#">새물품</a></li>
        <li><a href="#">이벤트</a></li>
        <li><a href="#">식단플랜</a></li>
        <li><a href="#">근처 헬스장</a></li>
        <li class="time_sale fb"><a href="#">TIME SALE</a></li>
    </ul>
</nav>
<main>
    <section id="mainSlide">
        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="static/images/main/1635724603738.jpg" alt="이번트"/></div>
                <div class="swiper-slide"><img src="static/images/main/1635387609532.jpg" alt="이번트"/></div>
                <div class="swiper-slide"><img src="static/images/main/1635387260159.jpg" alt="이번트"/></div>
            </div>
            <div class="swiper-pagination"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
        </div>
    </section><!--//mainSlide-->
    <section id="mainRecom">
        <h2 class="tit fb">이 물품은 어떠세요?</h2>
        <ul class="clear">
            <li>
                <a href="#" class="img_wrap">
                    <img src="static/images/main/051106023_1_300.png" alt="상추"/>
                </a>
                <div class="txt_wrap">
                    <span class="badge_best">인기</span>
                    <div class="pd_name"><a href="#">상추(150g)</a></div>
                    <div class="pd_price"><a href="#">1,500원</a></div>
                    <a href="#" class="add_cart xi-calculator"><span class="blind">장바구니 담기</span></a>
                </div>
            </li>
            <li>
                <a href="#" class="img_wrap">
                    <img src="static/images/main/051106023_1_300.png" alt="상추"/>
                </a>
                <div class="txt_wrap">
                    <span class="badge_best">인기</span>
                    <div class="pd_name"><a href="#">상추(150g)</a></div>
                    <div class="pd_price"><a href="#">1,500원</a></div>
                    <a href="#" class="add_cart"><span class="blind">장바구니 담기</span></a>
                </div>
            </li>
            <li>
                <a href="#" class="img_wrap">
                    <img src="static/images/main/051106023_1_300.png" alt="상추"/>
                </a>
                <div class="txt_wrap">
                    <span class="badge_best">인기</span>
                    <div class="pd_name"><a href="#">상추(150g)</a></div>
                    <div class="pd_price"><a href="#">1,500원</a></div>
                    <a href="#" class="add_cart"><span class="blind">장바구니 담기</span></a>
                </div>
            </li>
            <li>
                <a href="#" class="img_wrap">
                    <img src="static/images/main/051106023_1_300.png" alt="상추"/>
                </a>
                <div class="txt_wrap">
                    <span class="badge_best">인기</span>
                    <div class="pd_name"><a href="#">상추(150g)</a></div>
                    <div class="pd_price"><a href="#">1,500원</a></div>
                    <a href="#" class="add_cart"><span class="blind">장바구니 담기</span></a>
                </div>
            </li>
        </ul>
    </section><!--//mainRecom-->
    <section id="mainSale">
        <div class="sale_wrap clear">
            <div class="sale_title">
                <h2 class="tit">놓치기 아쉬운 <br/><span class="fb">알뜰물품</span></h2>
                <p>가격인하 물품을 <br/>지금 바로 이용해 보세요</p>
                <a href="#" class="more_view">더보기</a>
            </div>
            <div class="sale_item sl_3rd">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <a href="#" class="img_wrap">
                                <img src="static/images/main/130502035_1_300.jpg" alt="동백꽃 수분쿠션"/>
                            </a>
                            <div class="txt_wrap">
                                <!-- <span class="badge_best">인기</span> -->
                                <div class="pd_name"><a href="#">동백꽃 수분쿠션(리필/화사한꽃/15g)</a></div>
                                <div class="pd_price"><a href="#">12,000원</a></div>
                                <a href="#" class="add_cart"><span class="blind">장바구니 담기</span></a>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <a href="#" class="img_wrap">
                                <img src="static/images/main/130502035_1_300.jpg" alt="동백꽃 수분쿠션"/>
                            </a>
                            <div class="txt_wrap">
                                <!-- <span class="badge_best">인기</span> -->
                                <div class="pd_name"><a href="#">동백꽃 수분쿠션(리필/화사한꽃/15g)</a></div>
                                <div class="pd_price"><a href="#">12,000원</a></div>
                                <a href="#" class="add_cart"><span class="blind">장바구니 담기</span></a>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <a href="#" class="img_wrap">
                                <img src="static/images/main/130502035_1_300.jpg" alt="동백꽃 수분쿠션"/>
                            </a>
                            <div class="txt_wrap">
                                <!-- <span class="badge_best">인기</span> -->
                                <div class="pd_name"><a href="#">동백꽃 수분쿠션(리필/화사한꽃/15g)</a></div>
                                <div class="pd_price"><a href="#">12,000원</a></div>
                                <a href="#" class="add_cart"><span class="blind">장바구니 담기</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <ul>
                        <li>

                        </li>
                    </ul>
                </div>
            </div>
    </section><!--//mainSale-->
    <section id="mainNew">
        <h2 class="tit">반가운 <span class="fb">새물품</span></h2>
        <a href="#" class="more_view">더보기</a>
        <div class="new_ob">
            <ul>
                <li>
                    <a id="test">
                        <img src="static/images/main/1632812494755.jpg" alt="치약" />
                        <dl>
                            <dt>솔잎향으로 개운함이 오래오래 '물사랑 상쾌한치약'</dt>
                            <dd>솔잎, 녹차 등 식물유래 성분으로 순하고 상쾌하게!</dd>
                        </dl>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="static/images/main/1632812494755.jpg" alt="치약" />
                        <dl>
                            <dt>물사랑 상쾌한치약</dt>
                            <!-- <dd>솔잎, 녹차 등 식물유래 성분으로 순하고 상쾌하게!</dd> -->
                        </dl>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="static/images/main/1632812494755.jpg" alt="치약" />
                        <dl>
                            <dt>물사랑 상쾌한치약</dt>
                            <!-- <dd>솔잎, 녹차 등 식물유래 성분으로 순하고 상쾌하게!</dd> -->
                        </dl>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="static/images/main/1632812494755.jpg" alt="치약" />
                        <dl>
                            <dt>물사랑 상쾌한치약</dt>
                            <!-- <dd>솔잎, 녹차 등 식물유래 성분으로 순하고 상쾌하게!</dd> -->
                        </dl>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="static/images/main/1632812494755.jpg" alt="치약" />
                        <dl>
                            <dt>물사랑 상쾌한치약'</dt>
                            <!-- <dd>솔잎, 녹차 등 식물유래 성분으로 순하고 상쾌하게!</dd> -->
                        </dl>
                    </a>
                </li>
            </ul>
        </div>
    </section><!--//mainNew-->
    <section id="mainUser">
        <div class="user_wrap clear">
            <div class="user_title">
                <h2 class="tit"><span id="userId">조합원</span>님을 위한<br/> <span class="fb">추천물품</span></h2>
                <p>햅쌀로 맛있는 솥밥</p>
                <a href="#" class="more_view">더보기</a>
            </div>
            <div class="user_item sl_3rd">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <a href="#" class="img_wrap">
                                <img src="static/images/main/130502035_1_300.jpg" alt="동백꽃 수분쿠션"/>
                            </a>
                            <div class="txt_wrap">
                                <span class="badge_best">인기</span>
                                <div class="pd_name"><a href="#">동백꽃 수분쿠션(리필/화사한꽃/15g)</a></div>
                                <div class="pd_price"><a href="#">12,000원</a></div>
                                <a href="#" class="add_cart"><span class="blind">장바구니 담기</span></a>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <a href="#" class="img_wrap">
                                <img src="static/images/main/130502035_1_300.jpg" alt="동백꽃 수분쿠션"/>
                            </a>
                            <div class="txt_wrap">
                                <!-- <span class="badge_best">인기</span> -->
                                <div class="pd_name"><a href="#">동백꽃 수분쿠션(리필/화사한꽃/15g)</a></div>
                                <div class="pd_price"><a href="#">12,000원</a></div>
                                <a href="#" class="add_cart"><span class="blind">장바구니 담기</span></a>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <a href="#" class="img_wrap">
                                <img src="static/images/main/130502035_1_300.jpg" alt="동백꽃 수분쿠션"/>
                            </a>
                            <div class="txt_wrap">
                                <!-- <span class="badge_best">인기</span> -->
                                <div class="pd_name"><a href="#">동백꽃 수분쿠션(리필/화사한꽃/15g)</a></div>
                                <div class="pd_price"><a href="#">12,000원</a></div>
                                <a href="#" class="add_cart"><span class="blind">장바구니 담기</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
    </section><!--//mainUser-->
    <section id="mainHot">
        <h2 class="tit">지금 가장 많이 이용하는 <span class="fb">인기물품</span></h2>
        <div class="hot_tab">
            <ul class="clear">
                <li class="active"><a href="#"><span>헬스용품</span></a></li>
                <li><a href="#"><span>헬스기구</span></a></li>
                <li><a href="#"><span>다이어트 제품</span></a></li>
                <li><a href="#"><span>보충제</span></a></li>
                <li><a href="#"><span>건강식품</span></a></li>
            </ul>
        </div>
        <div class="hot_pd">
            <ul>
                <li>
                    <a href="#" class="img_wrap">
                        <img src="static/images/main/051106023_1_300.png" alt="상추"/>
                    </a>
                    <div class="txt_wrap">
                        <span class="badge_best">인기</span>
                        <div class="pd_name"><a href="#">상추(150g)</a></div>
                        <div class="pd_price"><a href="#">1,500원</a></div>
                        <a href="#" class="add_cart"><span class="blind">장바구니 담기</span></a>
                    </div>
                <li>
                    <a href="#" class="img_wrap">
                        <img src="static/images/main/051106023_1_300.png" alt="상추"/>
                    </a>
                    <div class="txt_wrap">
                        <span class="badge_best">인기</span>
                        <div class="pd_name"><a href="#">상추(150g)</a></div>
                        <div class="pd_price"><a href="#">1,500원</a></div>
                        <a href="#" class="add_cart"><span class="blind">장바구니 담기</span></a>
                    </div>
                </li>
                <li>
                    <a href="#" class="img_wrap">
                        <img src="static/images/main/051106023_1_300.png" alt="상추"/>
                    </a>
                    <div class="txt_wrap">
                        <span class="badge_best">인기</span>
                        <div class="pd_name"><a href="#">상추(150g)</a></div>
                        <div class="pd_price"><a href="#">1,500원</a></div>
                        <a href="#" class="add_cart"><span class="blind">장바구니 담기</span></a>
                    </div>
                </li>
                <li>
                    <a href="#" class="img_wrap">
                        <img src="static/images/main/051106023_1_300.png" alt="상추"/>
                    </a>
                    <div class="txt_wrap">
                        <span class="badge_best">인기</span>
                        <div class="pd_name"><a href="#">상추(150g)</a></div>
                        <div class="pd_price"><a href="#">1,500원</a></div>
                        <a href="#" class="add_cart"><span class="blind">장바구니 담기</span></a>
                    </div>
                </li>
                </li>
            </ul>
        </div>
    </section><!--//mainHot-->
    <section id="mainReview">
        <div class="review_wrap clear">
            <div class="review_tit">
                <h2 class="tit"><span id="userName">조합원</span>의 생생한 <br/><span class="fb">이용후기</span></h2>
                <p>이웃 조합원은<br/> 어떤 물품을 구매했을까요?</p>
            </div><!--//review_tit-->
            <div class="review_txt">
                <ul class="clear">
                    <li>
                        <strong><a href="#">유정란(15알/국내산)</a></strong>
                        <span></span>
                        <div class="re_txt"><a href="#">한살림 생산자분들 고생많으시죠? 조류독감때문에 더 고생이 많으셨을 것 같아요. 그래도 계란값이 5500원에서 5950원으로 올라도 불만</a></div>
                        <div>신*철(한살림춘천)</div>
                    </li>
                    <li>
                        <strong><a href="#">유정란(15알/국내산)</a></strong>
                        <span></span>
                        <div class="re_txt"><a href="#">한살림 생산자분들 고생많으시죠? 조류독감때문에 더 고생이 많으셨을 것 같아요. 그래도 계란값이 5500원에서 5950원으로 올라도 불만</a></div>
                        <div>신*철(한살림춘천)</div>
                    </li>
                    <li>
                        <strong><a href="#">유정란(15알/국내산)</a></strong>
                        <span></span>
                        <div class="re_txt"><a href="#">한살림 생산자분들 고생많으시죠? 조류독감때문에 더 고생이 많으셨을 것 같아요. 그래도 계란값이 5500원에서 5950원으로 올라도 불만</a></div>
                        <div>신*철(한살림춘천)</div>
                    </li>
                </ul>
            </div><!--//review_txt-->
        </div>
    </section><!--//mainReview-->
    <section id="mainNotice" class="clear">
        <div class="notice">
            <strong class="box_tit">공지사항</strong>
            <ul>
                <li>
                    <a href="#">포인트 소멸 안내</a>
                    <span>2021.11.01</span>
                </li>
                <li>
                    <a href="#">포인트 소멸 안내</a>
                    <span>2021.11.01</span>
                </li>
                <li>
                    <a href="#">포인트 소멸 안내</a>
                    <span>2021.11.01</span>
                </li>
            </ul>
        </div>
        <div class="counsel">
            <strong class="box_tit">고객센터</strong>
            <p class="phone">1666-0000</p>
            <p class="date"><span class="color_g">평일</span> 오전 9시  ~ 오후 6시</p>
            <p class="holiday">주말 및 공휴일 휴무</p>
            <p class="email"><span class="color_g">이메일</span>abcd@abcd</p>
        </div>
        <div class="qna">
            <strong class="box_tit">문의하기</strong>
            <a href="#" class="customer_qna">1:1문의하기</a>
        </div>
    </section><!--//mainHot-->
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
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script src="static/common/jquery-3.6.0.min.js"></script>
<script>
    var swiper01 = new Swiper("#mainSlide .mySwiper", {
        pagination: {
            el: ".swiper-pagination",
            type: "fraction",
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
    });

    var swiper02 = new Swiper(".sl_3rd .mySwiper", {
        slidesPerView: 3,
        spaceBetween: 30,
        slidesPerGroup: 3,
        loop: true,
        loopFillGroupWithBlank: true,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
    });

    $('#test').on('click',function (){
        $.ajax({
            type: "GET", //요청 메소드 방식
            url:"/test.do",
            dataType:"json", //서버가 요청 URL을 통해서 응답하는 내용의 타입
            success : function(result){
                console.log(result.list);
                $('#userName').text(result.list[4].member_name);
            },
            error : function(a, b, c) {
                //통신 실패시 발생하는 함수(콜백)

            }

        });
    });

    $('.total_menu_tit').hover(function(){
        $(this).css({'backgroundColor':'#000','color':'#fff'});
        $('.gnb_con span').css('background','#fff');
    },function(){
        $(this).css({'backgroundColor':'#fff','color':'#000'});
        $('.gnb_con span').css('background','#000');
    });

    $('.total_menu_tit, .total_menu').mouseover(function(){
        $('.total_menu').stop().slideDown();
    });

    $('.total_menu_tit, .total_menu').mouseout(function(){
        $('.total_menu').stop().slideUp();
    });

</script>

</html>
