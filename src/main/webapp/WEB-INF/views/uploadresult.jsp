<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

   <title>오늘뭐입지?</title>
  <link href="logo.png" rel="shortcut icon" type="image/x-icon">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Yeon+Sung&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons">
        <link rel="stylesgeet" href="https://rawgit.com/creativetimofficial/material-kit/master/assets/css/material-kit.css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
          <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
            <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
            <link rel="stylesheet" type="text/css"
            media="screen" href="${path}/resource/image/animation.css"/> 
           
        <style>
             *{
      font-family: 'Yeon Sung', cursive;
    }
    .navbar {
    border: 0;
    border-radius: 3px;
    padding: .625rem 0;
    margin-bottom: 20px;
    color: #555;
    background-color: #fff!important;
    box-shadow: 0 4px 18px 0 rgba(0,0,0,.12), 0 7px 10px -5px rgba(0,0,0,.15) !important;
    z-index: 1000 !important;
    transition: all 150ms ease 0s;
    
}
/* 스크롤내리면 색 네비바 색 변화 */
.navbar.navbar-transparent {
    z-index: 1030;
    background-color: transparent!important;
    box-shadow: none !important;
    padding-top: 25px;
    color: #fff;
}
/* 브랜드네임 효과 */
.navbar .navbar-brand {
    position: relative;
    color: inherit;
    height: 50px;
    font-size: 20px;
    line-height: 30px;
    padding: .625rem 0;
    font-weight: 300;
    -webkit-font-smoothing: antialiased;
}


.navbar .navbar-nav .nav-item .nav-link .fa, .navbar .navbar-nav .nav-item .nav-link .material-icons {
    font-size: 1.25rem;
    max-width: 24px;
    margin-top: 0px;
}

/* 네비바 상단 메뉴링크 */
.navbar .navbar-nav .nav-item .nav-link {
    position: relative;
    color: inherit;
    padding: .9375rem;
    font-weight: 400;
    font-size: 20px;
    border-radius: 3px;
    line-height: 20px;
}

/* 네비바 상단 메뉴링크 글자 위치조정 */

a .material-icons {
    vertical-align: middle;
}



/* 위에 공간 설정 */
.profile-page .page-header {
    height: 380px;
    background-position:center;
}


/* 위에 공간 세부설정 */
.header-filter:after, .header-filter:before {
    position: absolute;
    z-index: 1;
    width: 100%;
    height: 100%;
    display: block;
    left: 0;
    top: 0;
    content: "";
}

.header-filter::before {
    background: rgba(1, 2, 66, 0.5);
}

/* 옆에 공간남겨주는 방법 */
.main-raised {
    margin: -60px 30px 0;
    border-radius: 6px;
    box-shadow: 0 16px 24px 2px rgba(0,0,0,.14), 0 6px 30px 5px rgba(0,0,0,.12), 0 8px 10px -5px rgba(0,0,0,.2);
}

.main {
    background: #FFF;
    position: relative;
    z-index: 3;
}

.nav-pills .nav-item .nav-link {
    line-height: 24px;
    font-size: 12px;
    font-weight: 500;
    min-width: 100px;
    color: #555;
    transition: all .3s;
    border-radius: 30px;
    padding: 10px 15px;
    text-align: center;
}

.nav-pills .nav-item .nav-link:not(.active):hover {
    background-color: rgba(200,200,200,.2);
}


.tab-space {
    padding: 20px 0 50px;
}



.profile-page .gallery img {
    width: 100%;
    margin-bottom: 2.142rem;
}

.profile-page .profile .name{
    margin-top: -80px;
}

img.rounded {
    border-radius: 6px!important;
}

.tab-content>.active {
    display: block;
}

    </style>
</head>
<body  class="profile-page">
        <nav class="navbar navbar-color-on-scroll navbar-transparent  fixed-top  navbar-expand-lg "  color-on-scroll="100"  id="sectionsNav">
            <div class="container">
                <div class="navbar-translate">
                    <a class="navbar-brand" href="/">오 늘 뭐 입 지 ? </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        <span class="navbar-toggler-icon"></span>
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
            
                <div class="collapse navbar-collapse">
                    <ul class="navbar-nav ml-auto">
                       
                          <li class="nav-item">
                              <a class="nav-link" href="/" >홈
                              
                              </a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="/profile3" >프 로 필
                            
                            </a>
                        </li>
                          <li class="nav-item">
                           <c:choose>
                         <c:when test="${!empty id }">
                          <a class="nav-link" href="/logout">로 그 아 웃
                         
                        </a>
                         </c:when>
                         <c:otherwise>
                          <a class="nav-link" href="/login">로 그 인
                         
                        </a>
                         </c:otherwise>
                      </c:choose>
                     

                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/join" >회 원 가 입
                             
                            </a>
                        </li>
                        
                    </ul>
                </div>
            </div>
        </nav>
                <div class="page-header header-filter" data-parallax="true");"></div>
        <div class="main main-raised">
            <div class="profile-content ">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 ml-auto mr-auto">
                           <div class="profile">
                                <div class="avatar stagger-item">
                                   <img src="${path}/resource/image/logo.png" alt="Circle Image" class="img-raised rounded-circle img-fluid">
                                </div>
<!--                               <div class="text-center">
                <h3>
                  업로드에 성공했습니다!
                </h3>
               
               
              </div> -->
                               <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
              <div class="d-flex justify-content-between">
                <a href="/profile3" class="btn btn-lg btn-black mr-4 btn-center">파일이 성공적으로 업로드 되었습니다!!</a><br>
                
                            
              </div>
          </div>
        </div>
      </div>
    </div>
  </div>

 <!-- 푸터 들어가는 부분 -->
 <hr/>
            
 <div>
  <p class="text-center">
      <small><strong>오늘뭐입지?</strong></small><br>
      <small>대표 : 송가영 ㆍ 주소 :  사거리 ㆍ 사업자등록번호:123-12-12345 ㆍ 전화 : 02-123-1234</small><br>
      <small>Copyrightⓒ test.com All rights reserved.</small>
  </p>
</div>
<!--// 푸터 들어가는 부분 -->
</div>
</body>
</html>
