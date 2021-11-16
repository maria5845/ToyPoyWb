<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/jsp/inc/front_meta.jsp"/>
    <link rel="import" href="header.html">

    <!-- ================== CSS STYLE ================== -->
    <!-- Reset CSS -->
    <link rel="stylesheet" href="static/css/default.css">
    <link rel="stylesheet" href="static/css/common.css">
    <!-- bxslider CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="static/css/header.css">
    <link rel="stylesheet" href="static/css/footer.css">
    <link rel="stylesheet" href="static/css/main.css">
    <!-- ================ //CSS STYLE ================== -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.slider').bxSlider();
        });
    </script>
    <title>NORAN</title>
</head>
<body>
    <!-- header -->
    <jsp:include page="/WEB-INF/jsp/inc/header.jsp"/>
    <!-- //header -->

    <div id="container" class="container">
        <div class="main_slide">
            <div class="slider">
                <div><a href="#"><img src="static/images/main_banner.jpg" alt="상품"></a></div>
                <div><a href="#">두번째 슬라이드</a></div>
            </div>
        </div><!-- //main_slide-->
        <div class="commend">
            <div class="commend_wrap">
                <!-- how_pd -->
                <section class="how_pd">
                    <h2 class="tit">이 제품은 어떠세요?</h2>
                    <a href="#" class="btn_more">더보기 &rsaquo;</a>
                    <ul>
                        <li>
                            <a href="#">
                                <div class="sale_badge">
                                    <div class="sale_per">10<span class="ico_per">%</span></div>
                                    <img src="static/images/main_pd.jpg" alt="상품">
                                </div>
                                <div class="pd_txt">
                                    <strong class="pd_tit">크리스마스 선물 조명 장식 용품 전구 인테리어 무드등 프로모션</strong>
                                    <span class="pd_price">10,000</span><span>원</span>
                                </div>
                                <div class="pd_cart">
                                    <button class="btn_cart"><img src="static/images/ico_cart.png" alt="장바구니"/></button>
                                    <button class="btn_like"><img src="static/images/ico_heart.png" alt="찜하기"/></button>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="sale_badge">
                                    <div class="sale_per">10<span class="ico_per">%</span></div>
                                    <img src="static/images/main_pd.jpg" alt="상품">
                                </div>
                                <div class="pd_txt">
                                    <strong class="pd_tit">크리스마스 선물 조명 장식 용품 전구 인테리어 무드등 프로모션</strong>
                                    <span class="pd_price">10,000</span><span>원</span>
                                </div>
                                <div class="pd_cart">
                                    <button class="btn_cart"><img src="static/images/ico_cart.png" alt="장바구니"/></button>
                                    <button class="btn_like"><img src="static/images/ico_heart.png" alt="찜하기"/></button>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="sale_badge">
                                    <div class="sale_per">10<span class="ico_per">%</span></div>
                                    <img src="static/images/main_pd.jpg" alt="상품">
                                </div>
                                <div class="pd_txt">
                                    <strong class="pd_tit">크리스마스 선물 조명 장식 용품 전구 인테리어 무드등 프로모션</strong>
                                    <span class="pd_price">10,000</span><span>원</span>
                                </div>
                                <div class="pd_cart">
                                    <button class="btn_cart"><img src="static/images/ico_cart.png" alt="장바구니"/></button>
                                    <button class="btn_like"><img src="static/images/ico_heart.png" alt="찜하기"/></button>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="sale_badge">
                                    <div class="sale_per">10<span class="ico_per">%</span></div>
                                    <img src="static/images/main_pd2.png" alt="상품">
                                </div>
                                <div class="pd_txt">
                                    <strong class="pd_tit">건드 노래하는 곰인형 태태/곰인형 생일선물 조카선물 여친선물</strong>
                                    <span class="pd_price">10,000</span><span>원</span>
                                </div>
                                <div class="pd_cart">
                                    <button class="btn_cart"><img src="static/images/ico_cart.png" alt="장바구니"/></button>
                                    <button class="btn_like"><img src="static/images/ico_heart.png" alt="찜하기"/></button>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="sale_badge">
                                    <div class="sale_per">10<span class="ico_per">%</span></div>
                                    <img src="static/images/main_pd2.png" alt="상품">
                                </div>
                                <div class="pd_txt">
                                    <strong class="pd_tit">건드 노래하는 곰인형 태태/곰인형 생일선물 조카선물 여친선물</strong>
                                    <span class="pd_price">10,000</span><span>원</span>
                                </div>
                                <div class="pd_cart">
                                    <button class="btn_cart"><img src="static/images/ico_cart.png" alt="장바구니"/></button>
                                    <button class="btn_like"><img src="static/images/ico_heart.png" alt="찜하기"/></button>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="sale_badge">
                                    <div class="sale_per">10<span class="ico_per">%</span></div>
                                    <img src="static/images/main_pd2.png" alt="상품">
                                </div>
                                <div class="pd_txt">
                                    <strong class="pd_tit">건드 노래하는 곰인형 태태/곰인형 생일선물 조카선물 여친선물</strong>
                                    <span class="pd_price">10,000</span><span>원</span>
                                </div>
                                <div class="pd_cart">
                                    <button class="btn_cart"><img src="static/images/ico_cart.png" alt="장바구니"/></button>
                                    <button class="btn_like"><img src="static/images/ico_heart.png" alt="찜하기"/></button>
                                </div>
                            </a>
                        </li>
                    </ul>
                </section>
                <!-- //how_pd -->
                <!-- lank -->
                <section class="lank">
                    <h2 class="tit">실시간 랭킹</h2>
                    <ul class="lank_tab clear">
                        <li class="act active"><a href="#">잡화</a></li>
                        <li class="living"><a href="#">리빙</a></li>
                        <li class="fashion"><a href="#">패션</a></li>
                    </ul>
                    <ul class="lank_list list_act">
                        <li>
                            <div class="lank_num">1</div>
                            <div class="lank_txt"><p>에버랜드 판다 '푸바오'와 함께하는 포토 다이어리 북</p></div>
                            <div class="lank_img"><img src="static/images/tmp_lank_act.jpg" alt="상품" ></div>
                        </li>
                        <li>
                            <div class="lank_num">2</div>
                            <div class="lank_txt"><p>에버랜드 판다 '푸바오'와 함께하는 포토 다이어리 북</p></div>
                            <div class="lank_img"><img src="static/images/tmp_lank_act.jpg" alt="상품" ></div>
                        </li>
                        <li>
                            <div class="lank_num">3</div>
                            <div class="lank_txt"><p>에버랜드 판다 '푸바오'와 함께하는 포토 다이어리 북</p></div>
                            <div class="lank_img"><img src="static/images/tmp_lank_act.jpg" alt="상품" ></div>
                        </li>
                        <li>
                            <div class="lank_num">4</div>
                            <div class="lank_txt"><p>에버랜드 판다 '푸바오'와 함께하는 포토 다이어리 북</p></div>
                            <div class="lank_img"><img src="static/images/tmp_lank_act.jpg" alt="상품" ></div>
                        </li>
                        <li>
                            <div class="lank_num">5</div>
                            <div class="lank_txt"><p>에버랜드 판다 '푸바오'와 함께하는 포토 다이어리 북</p></div>
                            <div class="lank_img"><img src="static/images/tmp_lank_act.jpg" alt="상품" ></div>
                        </li>
                    </ul>
                    <ul class="lank_list list_living">
                        <li>
                            <div class="lank_num">1</div>
                            <div class="lank_txt"><p>키덜트+회전+접이식 거치대가 3만원대? 알루미늄으로 더 견고하게!</p></div>
                            <div class="lank_img"><img src="static/images/tmp_lank_living.jpg" alt="상품" ></div>
                        </li>
                        <li>
                            <div class="lank_num">2</div>
                            <div class="lank_txt"><p>키덜트+회전+접이식 거치대가 3만원대? 알루미늄으로 더 견고하게!</p></div>
                            <div class="lank_img"><img src="static/images/tmp_lank_living.jpg" alt="상품" ></div>
                        </li>
                        <li>
                            <div class="lank_num">3</div>
                            <div class="lank_txt"><p>키덜트+회전+접이식 거치대가 3만원대? 알루미늄으로 더 견고하게!</p></div>
                            <div class="lank_img"><img src="static/images/tmp_lank_living.jpg" alt="상품" ></div>
                        </li>
                        <li>
                            <div class="lank_num">4</div>
                            <div class="lank_txt"><p>키덜트+회전+접이식 거치대가 3만원대? 알루미늄으로 더 견고하게!</p></div>
                            <div class="lank_img"><img src="static/images/tmp_lank_living.jpg" alt="상품" ></div>
                        </li>
                        <li>
                            <div class="lank_num">5</div>
                            <div class="lank_txt"><p>키덜트+회전+접이식 거치대가 3만원대? 알루미늄으로 더 견고하게!</p></div>
                            <div class="lank_img"><img src="static/images/tmp_lank_living.jpg" alt="상품" ></div>
                        </li>
                    </ul>
                    <ul class="lank_list list_fashion">
                        <li>
                            <div class="lank_num">1</div>
                            <div class="lank_txt"><p>MILSPEC 백팩이 스펙업 해서 돌아왔다!! 아웃도어&데일리 만능 백팩</p></div>
                            <div class="lank_img"><img src="static/images/tmp_lank_fashion.jpg" alt="상품" ></div>
                        </li>
                        <li>
                            <div class="lank_num">2</div>
                            <div class="lank_txt"><p>MILSPEC 백팩이 스펙업 해서 돌아왔다!! 아웃도어&데일리 만능 백팩</p></div>
                            <div class="lank_img"><img src="static/images/tmp_lank_fashion.jpg" alt="상품" ></div>
                        </li>
                        <li>
                            <div class="lank_num">3</div>
                            <div class="lank_txt"><p>MILSPEC 백팩이 스펙업 해서 돌아왔다!! 아웃도어&데일리 만능 백팩</p></div>
                            <div class="lank_img"><img src="static/images/tmp_lank_fashion.jpg" alt="상품" ></div>
                        </li>
                        <li>
                            <div class="lank_num">4</div>
                            <div class="lank_txt"><p>MILSPEC 백팩이 스펙업 해서 돌아왔다!! 아웃도어&데일리 만능 백팩</p></div>
                            <div class="lank_img"><img src="static/images/tmp_lank_fashion.jpg" alt="상품" ></div>
                        </li>
                        <li>
                            <div class="lank_num">5</div>
                            <div class="lank_txt"><p>MILSPEC 백팩이 스펙업 해서 돌아왔다!! 아웃도어&데일리 만능 백팩</p></div>
                            <div class="lank_img"><img src="static/images/tmp_lank_fashion.jpg" alt="상품" ></div>
                        </li>
                    </ul>
                </section>
                <!-- //lank -->
            </div><!-- //commend_wrap -->
        </div><!-- //commend -->
        <div class="md_pick">
            <div class="md_pick_wrap">
                <h2 class="tit">MD 추천상품</h2>
                <a href="#" class="btn_more">더보기 &rsaquo;</a>
                <ul class="md_list">
                    <li>
                        <a href="#">
                            <img src="static/images/main_pd3.png" alt="상품">
                            <p>프리저브드플라워 미니꽃다발 플라워박스+유리병편지 카드</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="static/images/main_pd3.png" alt="상품">
                            <p>프리저브드플라워 미니꽃다발 플라워박스+유리병편지 카드</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="static/images/main_pd3.png" alt="상품">
                            <p>프리저브드플라워 미니꽃다발 플라워박스+유리병편지 카드</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="static/images/main_pd.jpg" alt="상품">
                            <p>크리스마스 선물 조명 장식 용품 전구 인테리어 무드등 프로모션</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="static/images/main_pd.jpg" alt="상품">
                            <p>크리스마스 선물 조명 장식 용품 전구 인테리어 무드등 프로모션</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="static/images/main_pd.jpg" alt="상품">
                            <p>크리스마스 선물 조명 장식 용품 전구 인테리어 무드등 프로모션</p>
                        </a>
                    </li>
                </ul>
            </div><!-- //md_pick -->
        </div><!-- //md_pick_wrap -->
        <div class="user_choice">
            <div class="user_choice_wrap">
                <h2 class="tit">회원님이 좋아할 추천상품</h2>
                <ul class="choice_list">
                    <li>
                        <a href="#">
                            <img src="static/images/main_pd3.png" alt="상품">
                            <p>프리저브드플라워 미니꽃다발 플라워박스+유리병편지 카드</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="static/images/main_pd3.png" alt="상품">
                            <p>프리저브드플라워 미니꽃다발 플라워박스+유리병편지 카드</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="static/images/main_pd3.png" alt="상품">
                            <p>프리저브드플라워 미니꽃다발 플라워박스+유리병편지 카드</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="static/images/main_pd3.png" alt="상품">
                            <p>프리저브드플라워 미니꽃다발 플라워박스+유리병편지 카드</p>
                        </a>
                    </li>
                    <li class="choice_event">
                        <a href="#">
                            <div><img src="static/images/main_pd4.jpg" alt="상품"></div>
                            <p>가습+수족관+가드닝, 아큐가든 하나로! 관리는 4개월에 딱 한 번만!</p>
                        </a>
                    </li>
                </ul>
            </div><!--//user_choice_wrap-->
        </div><!-- //user_choice -->
        <div class="event">
            <div class="event_wrap">
                <h2 class="tit">이벤트</h2>
                <ul class="event_list">
                    <li>
                        <a href="#">
                            <div class="banner_img"><img src="static/images/tmp_join_event.jpg" alt="상품"></div>
                            <div class="banner_txt">
                                <strong>와디즈 신규 가입 이벤트</strong>
                                <span>놓치면 안 될 4가지 혜택!</span>
                            </div>
                            <a href="" class="event_view">보러가기</a>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="banner_img"><img src="static/images/tmp_join_event.jpg" alt="상품"></div>
                            <div class="banner_txt">
                                <strong>와디즈 신규 가입 이벤트</strong>
                                <span>놓치면 안 될 4가지 혜택!</span>
                            </div>
                            <a href="" class="event_view">보러가기</a>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="banner_img"><img src="static/images/tmp_join_event.jpg" alt="상품"></div>
                            <div class="banner_txt">
                                <strong>와디즈 신규 가입 이벤트</strong>
                                <span>놓치면 안 될 4가지 혜택!</span>
                            </div>
                            <a href="" class="event_view">보러가기</a>
                        </a>
                    </li>
                </ul>
            </div><!--//event_wrap-->
        </div><!--//event-->
        <div class="early">
            <div class="early_wrap">
                <h2 class="tit">얼리버드</h2>
                <h3>먼저 참여하는 분들께 드리는 얼리버드 혜택</h3>
                <ul class="early_list">
                    <li>
                        <a href="#">
                            <div class="banner_img"><img src="static/images/main_pd5.jpg" alt="상품"></div>
                            <div class="banner_txt">
                                <strong>[김을 닮은 김펭귄]의 따땃한 하루를 위한 주문~ 바삭바삭 즐거워져라!</strong>
                                <span class="kate">캐릭터&middot;굿즈</span>
                            </div>
                            <div class="banner_txt_sub">
                                <strong>SET1</strong>
                                <strong>무릎담요 1개, 스마트톡 1개, 서비스 굿즈(스티커 1개)</strong>
                                <span>35,000원</span>
                            </div>
                            <a href="" class="buy_now">지금 구매하기</a>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="banner_img"><img src="static/images/main_pd5.jpg" alt="상품"></div>
                            <div class="banner_txt">
                                <strong>[김을 닮은 김펭귄]의 따땃한 하루를 위한 주문~ 바삭바삭 즐거워져라!</strong>
                                <span class="kate">캐릭터&middot;굿즈</span>
                            </div>
                            <div class="banner_txt_sub">
                                <strong>SET1</strong>
                                <strong>무릎담요 1개, 스마트톡 1개, 서비스 굿즈(스티커 1개)</strong>
                                <span>35,000원</span>
                            </div>
                            <a href="" class="buy_now">지금 구매하기</a>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="banner_img"><img src="static/images/main_pd5.jpg" alt="상품"></div>
                            <div class="banner_txt">
                                <strong>[김을 닮은 김펭귄]의 따땃한 하루를 위한 주문~ 바삭바삭 즐거워져라!</strong>
                                <span class="kate">캐릭터&middot;굿즈</span>
                            </div>
                            <div class="banner_txt_sub">
                                <strong>SET1</strong>
                                <strong>무릎담요 1개, 스마트톡 1개, 서비스 굿즈(스티커 1개)</strong>
                                <span>35,000원</span>
                            </div>
                            <a href="" class="buy_now">지금 구매하기</a>
                        </a>
                    </li>
                </ul>
            </div><!--//early_wrap-->
        </div><!--//early-->
        <div class="theme">
            <div class="theme_wrap">
                <h2 class="tit">기획전</h2>
                <ul class="theme_list">
                    <li>
                        <div><img src="static/images/tmp_theme_main.jpg" alt=""></div>
                        <strong>사람과 자연을 생각한 착한 상품</strong>
                        <ul class="theme_pd_list">
                            <li>
                                <a href="">
                                    <div class="theme_txt">실속! 제주 감성을 가득 담은 제주 여행 키트(feat.일상)</div>
                                    <div class="theme_img"><img src="static/images/tmp_theme_thumnail.jpg" alt=""></div>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="theme_txt">실속! 제주 감성을 가득 담은 제주 여행 키트(feat.일상)</div>
                                    <div class="theme_img"><img src="static/images/tmp_theme_thumnail.jpg" alt=""></div>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="theme_txt">실속! 제주 감성을 가득 담은 제주 여행 키트(feat.일상)</div>
                                    <div class="theme_img"><img src="static/images/tmp_theme_thumnail.jpg" alt=""></div>
                                </a>
                            </li>
                        </ul>
                        <a href="" class="theme_view">더보기</a>
                    </li>
                    <li>
                        <div><img src="static/images/tmp_theme_main.jpg" alt=""></div>
                        <strong>사람과 자연을 생각한 착한 상품</strong>
                        <ul class="theme_pd_list">
                            <li>
                                <a href="">
                                    <div class="theme_txt">실속! 제주 감성을 가득 담은 제주 여행 키트(feat.일상)</div>
                                    <div class="theme_img"><img src="static/images/tmp_theme_thumnail.jpg" alt=""></div>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="theme_txt">실속! 제주 감성을 가득 담은 제주 여행 키트(feat.일상)</div>
                                    <div class="theme_img"><img src="static/images/tmp_theme_thumnail.jpg" alt=""></div>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="theme_txt">실속! 제주 감성을 가득 담은 제주 여행 키트(feat.일상)</div>
                                    <div class="theme_img"><img src="static/images/tmp_theme_thumnail.jpg" alt=""></div>
                                </a>
                            </li>
                        </ul>
                        <a href="" class="theme_view">더보기</a>
                    </li>
                    <li>
                        <div><img src="static/images/tmp_theme_main.jpg" alt=""></div>
                        <strong>사람과 자연을 생각한 착한 상품</strong>
                        <ul class="theme_pd_list">
                            <li>
                                <a href="">
                                    <div class="theme_txt">실속! 제주 감성을 가득 담은 제주 여행 키트(feat.일상)</div>
                                    <div class="theme_img"><img src="static/images/tmp_theme_thumnail.jpg" alt=""></div>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="theme_txt">실속! 제주 감성을 가득 담은 제주 여행 키트(feat.일상)</div>
                                    <div class="theme_img"><img src="static/images/tmp_theme_thumnail.jpg" alt=""></div>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="theme_txt">실속! 제주 감성을 가득 담은 제주 여행 키트(feat.일상)</div>
                                    <div class="theme_img"><img src="static/images/tmp_theme_thumnail.jpg" alt=""></div>
                                </a>
                            </li>
                        </ul>
                        <a href="" class="theme_view">더보기</a>
                    </li>
                </ul><!--//theme_list-->
            </div><!--//theme_wrap-->
        </div><!--//theme-->
        <div class="new_arrive">
            <div class="new_arrive_wrap">
                <h2 class="tit">오늘들어온 따끈따끈한 신상</h2>
                <a href="#" class="btn_more">더보기 &rsaquo;</a>
                <ul class="new_arrive_list">
                    <li>
                        <a href="#">
                            <img src="static/images/main_pd3.png" alt="상품">
                            <p>프리저브드플라워 미니꽃다발 플라워박스+유리병편지 카드</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="static/images/main_pd3.png" alt="상품">
                            <p>프리저브드플라워 미니꽃다발 플라워박스+유리병편지 카드</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="static/images/main_pd3.png" alt="상품">
                            <p>프리저브드플라워 미니꽃다발 플라워박스+유리병편지 카드</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="static/images/main_pd.jpg" alt="상품">
                            <p>크리스마스 선물 조명 장식 용품 전구 인테리어 무드등 프로모션</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="static/images/main_pd.jpg" alt="상품">
                            <p>크리스마스 선물 조명 장식 용품 전구 인테리어 무드등 프로모션</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="static/images/main_pd.jpg" alt="상품">
                            <p>크리스마스 선물 조명 장식 용품 전구 인테리어 무드등 프로모션</p>
                        </a>
                    </li>
                </ul><!--//new_arrive_list-->
            </div><!-- //new_arrive_wrap-->
        </div><!-- //new_arrive-->
        <div class="event_banner">
            <div class="event_banner_wrap">
                <div class="bg"></div>
                <h2>노란에서 선물보내기</h2>
                <p>당신의 소중한 사람에게 선물을 보내세요.</p>
                <a href="#">바로가기</a>
            </div><!-- //event_banner_wrap-->
        </div><!-- //event_banner-->
    </div><!-- //container -->
    <!-- footer -->
    <jsp:include page="/WEB-INF/jsp/inc/footer.jsp"/>
    <!-- //footer -->
</body>
</html>