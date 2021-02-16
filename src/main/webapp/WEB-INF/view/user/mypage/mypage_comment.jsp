<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/front-end/css/index.css">
    <link rel="shortcut icon" href="/img/logo_favicon.ico"> <!--favicon-->
    <link rel="icon" href="/img/logo_favicon.ico">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"> <!--icon-->
    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script> 
    <!--그리드시스템을 위한 css파일-->
    <link rel="stylesheet" href="/front-end/css/bootstrap-grid.min.css">
    <!--reboot.css 는 태그속성들이 다른 브라우저에서 호환이 가능하게끔 스타일을 맞춰주는 css파일 -->
    <link rel="stylesheet" href="/front-end/css/bootstrap-reboot.min.css">
    <!--부트스트랩 기능들의 css-->
    <link rel="stylesheet" href="/front-end/css/bootstrap.min.css">
    <link rel="stylesheet" href="/front-end/css/mypage_qnc.css">
    <title>EUTCHAPEDIA</title>
    
</head>
<body>
    <!-------------- 헤더 --------------->
    <header>
        <div class="wrapper">
            <div class="navbar">
                <div class="navbar_logo">
                    <img id="logo" src="/img/original.png"> <!-- 이미지파일 이동 시 경로 확인!-->
                </div>

                <div class="menu">
                <ul>
                <span><li><a href="#">ABOUT US</a></li></span>
                <span><li><a href="#">평가하기</a></li></span>
                <span><li><a href="#">고객센터</a></li></span>
                </ul>
                </div>

                <!--검색창-->
                <div class="searchbar">
                    <form action="#">
                    <div class="search_box"> 
                        <div class="icon"><i class="fas fa-search"></i> 
                            <input type="text" value="" placeholder=" 작품 제목, 배우,감독을 검색해보세요.">
                        </div>
                    </div>
                    </form>
                </div>

                <div class="menu">
                    <ul>
                    <span><li><a href="#">로그인</a></li></span>
                    <span><li><a href="#">회원가입</a></li></span>
                </ul>
            </div>
            </div>
        </div>
    </header>

    <!-------------- 바디 --------------->
    <section class="mypage_comment">
        <div class="my_comment_wrap">
            <div class="myq_title_section">
                <h3 class="myq_tit">
                    나의 코멘트
                </h3>
                <ul class="myq_noti_list">
                    <li class="list">읏챠피디아 코멘트를 통해 나를 표현해 보세요!</li>
                    <li class="list">내가 남긴 코멘트를 한눈에 볼 수 있어요.</li>
                </ul>
            </div>
            <div class="myq_service">
                <p>
                    <strong>6건의 코멘트가 있습니다.</strong>
                </p>
                <select title="코멘트 정렬 옵션 선택" class="myq_list_option" 
                        style="width: 98px;" onchange="">
                    <option value="1" selected>최근 작성순</option>
                    <option value="2">별점순</option>
                    <option value="3">영화 이름순</option>    
                </select>
            </div>

            <div class="myq_item_list">
                <div class="my_item">

                    <!-- 코멘트 목록 -->
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">영화명</th>
                            <th scope="col">내용</th>
                            <th scope="col">별점</th>
                            <th scope="col">작성일</th>

                        </tr>
                        </thead>
                        <tbody>
                        <tr href="">
                            <th scope="row">1</th>
                            <td>기생충</td>
                            <td class="myq_item_content">우리의 마음에는 무엇이 기생하는가. 무엇이 우리를 ‘무계획이 계획’인 삶으로 몰아넣는가.</td>
                            <td>★ 4.5</td>
                            <td>2021-01-02</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>소울</td>
                            <td class="myq_item_content">
                                꿈에 그리던 최고의 밴드와 재즈 클럽에서 연주하게 된 그 날, 
                                예기치 못한 사고로 영혼이 되어 ‘태어나기 전 세상’에 떨어진다. 
                                </td>
                            <td>★ 4.5</td>
                            <td>2021-01-04</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>해리포터 어쩌구 저쩌구</td>
                            <td class="myq_item_content">
                                어둠의 마왕인 볼드모트 경을 해리의 부모님에게 이끌어 죽음으로 몰고 간 당사자. 
                                설상가상으로 영혼을 빨아들이는 아즈카반의 무시무시한 간수 ‘디멘터’가 호그와트에 
                                </td>
                            <td>★ 4.5</td>
                            <td>2021-01-04</td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Jacob</td>
                            <td>어쩌구 ㅈ쩌구 저쩌고 마술사</td>
                            <td>★ 4.5</td>
                            <td>2021-01-04</td>
                        </tr>
                        <tr>
                            <th scope="row">5</th>
                            <td>Jacob</td>
                            <td>어쩌구 ㅈ쩌구 저쩌고 마술사</td>
                            <td>★ 4.5</td>
                            <td>2021-01-04</td>
                        </tr>
                        <tr>
                            <th scope="row">6</th>
                            <td>Jacob</td>
                            <td>어쩌구 ㅈ쩌구 저쩌고 마술사</td>
                            <td>★ 4.5</td>
                            <td>2021-01-04</td>
                        </tr>
                        <tr>
                            <th scope="row">7</th>
                            <td>Jacob</td>
                            <td>어쩌구 ㅈ쩌구 저쩌고 마술사</td>
                            <td>★ 4.5</td>
                            <td>2021-01-04</td>
                        </tr>
                        <tr>
                            <th scope="row">8</th>
                            <td>Jacob</td>
                            <td>어쩌구 ㅈ쩌구 저쩌고 마술사</td>
                            <td>★ 4.5</td>
                            <td>2021-01-04</td>
                        </tr>
                        <tr>
                            <th scope="row">9</th>
                            <td>Jacob</td>
                            <td>어쩌구 ㅈ쩌구 저쩌고 마술사</td>
                            <td>★ 4.5</td>
                            <td>2021-01-04</td>
                        </tr>
                        <tr>
                            <th scope="row">10</th>
                            <td>Jacob</td>
                            <td>어쩌구 ㅈ쩌구 저쩌고 마술사</td>
                            <td>★ 4.5</td>
                            <td>2021-01-04</td>
                        </tr>
                        </tbody>
                    </table>

                </div>
            </div>

            <!---------------- 페이징 처리 ---------------->
            <div class="pagination_section">
                <div class="custom_pagination">
                    <span class="pagination_prev disabled">
                        <a href="">
                            <ruler-svg-icon-prev>
                                <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                    viewBox="0 0 443.52 443.52" style="width: 11px; height: 22px; enable-background:new 0 0 443.52 443.52;" xml:space="preserve">
                                    <path d="M143.492,221.863L336.226,29.129c6.663-6.664,6.663-17.468,0-24.132c-6.665-6.662-17.468-6.662-24.132,0l-204.8,204.8
                                        c-6.662,6.664-6.662,17.468,0,24.132l204.8,204.8c6.78,6.548,17.584,6.36,24.132-0.42c6.387-6.614,6.387-17.099,0-23.712
                                        L143.492,221.863z" style="stroke: rgb(0,0,0); stroke-width: 22;"/>
                                </svg>
                            </ruler-svg-icon-prev>
                        </a>
                    </span>
                    <span class="pagenum current">
                        <span>1</span>
                    </span>
                    <span class="pagenum">
                        <a>2</a>
                    </span>
                    <span class="pagination_next">
                        <a href="">
                            <ruler-svg-icon-next width="11" height="22" stroke="#000">
                                <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                    viewBox="0 0 443.52 443.52" style="width: 11px; height: 22px; enable-background:new 0 0 443.52 443.52;" xml:space="preserve">
                                    <path d="M336.226,209.591l-204.8-204.8c-6.78-6.548-17.584-6.36-24.132,0.42c-6.388,6.614-6.388,17.099,0,23.712l192.734,192.734
                                            L107.294,414.391c-6.663,6.664-6.663,17.468,0,24.132c6.665,6.663,17.468,6.663,24.132,0l204.8-204.8
                                            C342.889,227.058,342.889,216.255,336.226,209.591z" style="stroke: rgb(0,0,0); stroke-width: 22;"/>
                                </svg>
                            </ruler-svg-icon-next>
                        </a>
                    </span>
                </div>
            </div>
            
        </div>
    </section>
    
    <!-------------- 푸터 --------------->
    <footer>
        <section class="count-space">
            <span class="count">지금까지<em> ★ 123,534,545 개의 평가가 </em> 쌓였어요.</span>
        </section>
        
        <div class="footer-right">
            <div class="social-icons">
                <span><a href="#"><i class="fab fa-instagram"></i></a></span> 
                <span><a href="#"><i class="fab fa-facebook-f"></i></a></span> 
                <span><a href="#"><i class="fab fa-twitter"></i></a></span> 
            </div>
        </div>

        <div class="footer-left">
            <div>
                <a href="#"> 서비스 이용약관</a>
                <a href="#"> 개인정보 처리방침</a>
                <a href="#"> 회사 안내</a>
            </div>

            <div>
                <p>
                고객센터<span> | </span>cs@eutchapedia.com, 02-123-4567 <br/>
                제휴 및 대외 협력<span> | </span>contact@eutcha.com</p>
                <p>
                주식회사 읏챠<span> | </span>대표 이지현<span> | </span>서울특별시 영등포구 선유동2로 57 이레빌딩(구관) 19F,20F<br/>
                사업자 등록 번호 211-12-34567<br/>
                © 2021 by EUTCHA, Inc. All rights reserved.
                </p>
            </div>
        </div>
    </footer>
    

    <!--부트스트랩이 jquery를 사용하고있어 어떠한 js파일보다 상위에 있어야함-->
    <script src="/front-end/js/jquery.min.js"></script>
    <!--부트스트랩 4버전부터 popper.js가필요함 bundle.min.js에 popper.js가 포함되어있음-->
    <script src="/front-end/js/bootstrap.bundle.min.js"></script>
</body>
</html>
