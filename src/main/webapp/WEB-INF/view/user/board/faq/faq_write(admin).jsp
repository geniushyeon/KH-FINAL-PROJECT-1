<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script> 
    <!--그리드시스템을 위한 css파일-->
    <link rel="stylesheet" href="/민진/front-end/css/bootstrap-grid.min.css">
    <!--reboot.css 는 태그속성들이 다른 브라우저에서 호환이 가능하게끔 스타일을 맞춰주는 css파일 -->
    <link rel="stylesheet" href="/민진/front-end/css/bootstrap-reboot.min.css">
    <!--부트스트랩 기능들의 css-->
    <link rel="stylesheet" href="/민진/front-end/css/bootstrap.min.css">
    <link rel="stylesheet" href="/민진/front-end/css/faq.css">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/민진/front-end/css/index.css">
    <link rel="shortcut icon" href="/민진/front-end/img/logo_favicon.ico"><!--favicon-->
    <link rel="icon" href="/민진/front-end/img/logo_favicon.ico">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"> <!--icon-->
    <link rel="stylesheet" href="css/index.css">
     <!-- 네이버 스마트에디터 -->
     <script type="text/javascript" src="/민진/front-end/html/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
    
    <title>EUTCHAPEDIA</title>
</head>

<body>
    <header>
        <div class="wrapper">
            <div class="navbar">
                <div class="navbar_logo">
                    <img id="logo" src="/민진/front-end/img/logo.png"> <!-- 이미지파일 이동 시 경로 확인!-->
                </div>

    
                <div class="menu">
                <ul>
                  <span><li><a href="#">ABOUT US</a></li></span>
                  <span> <li><a href="#">평가하기</a></li></span>
                    <span> <li><a href="#">고객센터</a></li></span>
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
    <section class="page_notiboard_sction">
        <div class="notiboard_wrap">

            <div class="article_left">
                <div id="snb" class="snb_cc">
                    <h2 class="title_snb">고객센터</h2>
                    <div class="inner_snb">
                        <ul class="list_menu">
                            <li class="list_menu">
                                <a href="">공지사항</a>
                            </li>
                            <li class="list_menu on">
                                <a href="faq_list(admin).html">자주하는 질문</a>
                            </li>
                            <li class="list_menu">
                                <a href="">1:1 문의</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="page_section section_qna">
                <div class="head_aticle">
                <h2 class="tit"><strong>자주하는 질문</strong></h2>
                </div>
                
                <div class="xans-board-write">
                <form name="fm" id="fm" method="post" action="/shop/mypage/indb.php" enctype="multipart/form-data" onsubmit="return chkForm(this)" style="height: 100%;">
                <input type="hidden" name="mode" value="add_qna">
                <input type="hidden" name="itemcd" value="">
                <input type="hidden" name="sno" value="0">
                <table id="table_after" class="boardWrite2" width="100%">
                <colgroup><col width="14%" align="right">
                </colgroup><tbody><tr>
              
                <th class="input_txt" style="padding-top:20px;">제목</th>
                <td><br>
                <input type="text" name="subject" style="width:100%; height:25px;" required="" fld_esssential="" label="제목" value="">
                </td>
                </tr>
                <tr>
                <th class="input_txt">내용</th>
                <td class="edit_area" style="position: relative;">
                <strong class="tit qna_public"></strong>             
                <dl class="list qna_public">
                </dl>
                
                
                
                <!-- <textarea name="contents" style="width:100%;height:474px;" class="editing_area" required="" fld_esssential="" label="내용"></textarea> -->
                <textarea name="ir1" id="ir1" rows="10" cols="137">에디터에 기본으로 삽입할 글(수정 모드)이 없다면 이 value 값을 지정하지 않으시면 됩니다.</textarea>
                </td>
                </tr>
                <tr>
                <th class="input_txt">이미지</th>
                <td>
                <section id="section">
                <table width="90%" id="table" cellpadding="0" cellspacing="0" border="0" style="border:solid 1px #f4f4f4; border-collapse:collapse;">
                    <tbody>
                        <tr data-tr_value="1">
                            <td><input type="checkbox" name="checkRow"/></td>
                            <td width="30" nowrap="" align="center">1</td>
                            <td width="100%">
                            <input type="file" name="file[]" style="width:50%" class="linebg">
                            <!-- <input type="button" name="del_btn" id="delete" class="del_btn" value="삭제"/> -->
                            </td>
                        </tr>
                        <tr data-tr_value="2">
                            <td><input type="checkbox" name="checkRow"/></td>
                            <td width="30" nowrap="" align="center">2</td>
                            <td width="100%">
                            <input type="file" name="file[]" style="width:50%" class="linebg">
                            <!-- <input type="button" name="del_btn" id="delete" class="del_btn" value="삭제"/> -->
                            </td>
                        </tr>
                    </tbody>
                    <div style="padding-left: 630px;">
                      <input type="button" name="del_btn" id="delete" class="del_button" value="삭제"/>
                    </div>    
                </table>
                </section>
                <table><tbody><tr><td height="2"></td></tr></tbody></table>
                <div width="100%" style="padding:5px; padding-top:10px;" class="stxt">
                <input type="checkbox"/>　바로공개<br>
                </div>
                </td>
                </tr>
                </tbody></table>
                
                <table width="60%">
                <tbody><tr>
                <td align="right" style="padding-top:20px; border:none;" id="avoidDbl">
                <input type="submit" class="bhs_button yb" value="저장" style="float:none;">
                <a href="faq_list(admin).html">
                    <input type="button" class="cancel_btn" value="취소"/>
                </a>
                </td>
                </tr>
                </tbody></table>
                </form>
                </div>
            </div>
        </div>
    </section>
    <!-- footer -->
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
              고객센터<span> | </span>cs@eutchapedia.com, 02-123-4567 <br />
              제휴 및 대외 협력<span> | </span>contact@eutcha.com</p>
            <p>
              주식회사 읏챠<span> | </span>대표 이지현<span> | </span>서울특별시 영등포구 선유동2로 57 이레빌딩(구관) 19F,20F<br />
              사업자 등록 번호 211-12-34567<br />
              © 2021 by EUTCHA, Inc. All rights reserved.
            </p>
          </div>
        </div>
    
      </footer>
    
        <!-- scripts -->
      <script src="js/jquery.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script type="text/javascript">
        var oEditors = [];
        nhn.husky.EZCreator.createInIFrame({
         oAppRef: oEditors,
         elPlaceHolder: "ir1",
         sSkinURI: "/민진/front-end/html/se2/SmartEditor2Skin.html",
         fCreator: "createSEditor2"
        });
    </script>
    <script>
        // ‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
function submitContents(elClickedObj) {
// 에디터의 내용이 textarea에 적용된다.
oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);

// 에디터의 내용에 대한 값 검증은 이곳에서
// document.getElementById("ir1").value를 이용해서 처리한다.

try {
 elClickedObj.form.submit();
} catch(e) {}
        }
    </script>
</html>