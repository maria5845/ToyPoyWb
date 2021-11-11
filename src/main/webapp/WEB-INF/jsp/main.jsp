<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="import" href="header.html">
    <link rel="stylesheet" href="static/css/default.css">
    <link rel="stylesheet" href="static/css/common.css">
    <link rel="stylesheet" href="static/css/header.css">
    <link rel="stylesheet" href="static/css/footer.css">
    <link rel="stylesheet" href="static/css/main.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    <title>NORAN</title>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/inc/header.jsp"/>
<div class="commend">
    <section class="how_pd">
        <h2 class="tit">이 제품은 어떠세요?</h2>
        <ul>
            <li>
                <a href="">
                    <div>
                        <div class="sale">10%</div>
                        <img src="static/images/main_pd.jpg" alt="상품">
                    </div>
                    <div>
                        <strong>크리스마스 선물 조명 장식 용품 전구 인테리어 무드등 프로모션</strong>
                        <span>10,000</span><span>원</span>
                    </div>
                </a>
            </li>
        </ul>
    </section>
    <section class="lank">
        <h2 class="tit">실시간 랭킹</h2>
        <ul>
            <li>
                <a href="">
                    <div>
                        <div class="sale">10%</div>
                        <img src="static/images/main_pd.jpg" alt="상품">
                    </div>
                    <div>
                        <strong>크리스마스 선물 조명 장식 용품 전구 인테리어 무드등 프로모션</strong>
                        <span>10,000</span><span>원</span>
                    </div>
                </a>
            </li>
        </ul>
    </section>
</div>
<jsp:include page="/WEB-INF/jsp/inc/footer.jsp"/>
</body>
</html>