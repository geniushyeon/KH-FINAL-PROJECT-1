<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/admin/admin-header.css">
    <link rel="stylesheet" href="css/admin/admin-nav.css">
    <link rel="stylesheet" href="css/admin/admin-content.css">
</head>
<body>
<div id="nav-col" class="col-lg-2">
    
                    <!--nav영역-->
    
                    <!--어드민 정보-->
                    <div id="admin-info">
                        <img class="col-lg-12" src="img/person3.png" alt="">
                        <br />
                        <div id="admin-id" class="col-lg-12">
                            <strong>kimeungyu</strong>
    
                        </div>
                    </div>
                    
                    
                    <!--드롭다운버튼 모음-->
                    <div id="dropdown-container" class="col-lg-12">
                      <div id='cssmenu' class="col-lg-12 col-sm-12">
                        <ul>
                           <li><a href='/KEK/front-end/dashboard.html'><span>통계보기</span></a></li>
                           <li id="nav-info" class='active has-sub' style="margin-top: 100px;"><a href='#'><span>정보관리</span></a>
                              <ul>
                                 <li class='has-sub'><a href='#'><span>회원관리</span></a>
                                    <ul>
                                       <li><a href='/PJW/selectMember.html'><span>회원조회</span></a></li>
                                       <li class='last'><a href='/PJW/blockMember.html'><span>블랙리스트 관리</span></a></li>
                                    </ul>
                                 </li>
                                
                              </ul>
                           </li>
                           <li id="nav-movieinfo" class='active has-sub' style="margin-top: 100px;"><a href='#'><span>영화관리</span></a>
                              <ul>
                                
                                 <li class='has-sub'><a href='#'><span>영화관리</span></a>
                                    <ul>
                                       <li><a href='/KEK/front-end/pick-add.html'><span>pick 추가</span></a></li>
                                       <li><a href='/KEK/front-end/pick-delete.html'><span>pick 삭제</span></a></li>
                                       <li><a href='/KEK/front-end/comment-enrollment.html'><span>코맨트 관리</span></a></li>
                                       <li class='last'><a href='/KEK/front-end/dbmanagement.html'><span>영화DB 관리</span></a></li>
                                    </ul>
                                 </li>
                              </ul>
                           </li>
                           
                        </ul>
                        </div>
                    </div>
                </div>
                <script src="/js/movie/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
        <script src="/js/movie/mychart.js"></script>
        <script src="/js/movie/myslider.js"></script>
</body>
</html>