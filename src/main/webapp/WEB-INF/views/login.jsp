<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>오늘뭐입지?</title>
    <link href="logo.png" rel="shortcut icon" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Yeon+Sung&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> -->
<!-- Bootstrap -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<!-- jQuery  -->
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<!-- 모든 합쳐진 플러그인을 포함 -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- Respond.js   -->
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<link rel="stylesheet" type="text/css"
    media="screen" href="${path}/resource/image/animation.css"/>


<style>
   *{
      font-family: 'Yeon Sung', cursive;
    }
  .footer {
    width: 100%;
    height: 150px; /* footer의 높이 */
    position: absolute;  
    bottom: 0;
    left: 0;
}

.navbar{
  background-color: rgb(126, 126, 158);
}

.navbar-brand {
  font-size: 20px;
}

.nav-item {
  font-size: 20px;
}

</style>
</head>
 <body class="container">
    <div class="modal fade"  id="defaultModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close " data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">알림</h4>
                </div>
                <div class="modal-body">
                    <p class="modal-contents"></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
    <!--모달 --> 

    <div class="jumbotron" style="margin-top:100px; margin-bottom:100px;">
        <h1 >로 그 인</h1>
 
    </div>
    <form class="form-horizontal stagger-item" role="form" method="post" action="login"> 
<div class="form-group" id="divId">
            <label for="inputId" class="col-lg-2 control-label">아 이 디</label>
            <div class="col-lg-10">
                <input type="text" class="form-control onlyAlphabetAndNumber" id="id" name="id" data-rule-required="true" placeholder="아이디를 입력하세요" maxlength="30">
            </div>
        </div>
        <div class="form-group" id="divPassword">
            <label for="inputPassword" class="col-lg-2 control-label">패 스 워 드</label>
            <div class="col-lg-10">
                <input type="password" class="form-control" id="password" name="password" data-rule-required="true" placeholder="패스워드를 입력하세요" maxlength="30">
            </div>
        </div>
        <div id="message" style="display: none;">
      	<h5 style="color: blue; text-align: center;">아이디와 비밀번호를 확인해주세요.</h5>
      </div>
        
        <div class="form-group">
            <div class="col-lg-offset-2 col-lg-10">

                <button type="submit" class="btn btn-default btn-outline-secondary">로 그 인</button> 
            </div>
        </div>
    </form>


  <!-- 상단 네비바 들어가는 부분 -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="/">오 늘 뭐 입 지 ?</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
  
      <div class="collapse navbar-collapse" id="navbarColor02">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link active" href="/">홈
              
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link"  href="/profile3">프 로 필</a>
            
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
            <a class="nav-link" href="/join">회 원 가 입</a>
            
          </li>
         
        </ul>
       
      </div>
    </div>
  </nav>
  
 
 
  <!-- <footer class="container-fluid navbar-fixed-bottom text-center">
    <p>Footer Text</p>
  </footer> -->


          
           <!-- 푸터 들어가는 부분 -->
            
 <div>
 
  <footer class="footer text-center">
    <hr/>
      <small><strong>오늘뭐입지?</strong></small><br>
      <small>대표 : 송가영 ㆍ 주소 :  사거리 ㆍ 사업자등록번호:123-12-12345 ㆍ 전화 : 02-123-1234</small><br>
      <small>Copyrightⓒ test.com All rights reserved.</small>
      
  </footer>
</div>
<!--// 푸터 들어가는 부분 -->
</div>
<script>

    $(function(){
        //모달 전역변수 선언
        var modalContents = $(".modal-contents");
        var modal = $("#defaultModal");
        
       
        
        //class 적용
/*         $('#id').keyup(function(event){
            
            var divId = $('#divId');
            
            if($('#id').val()==""){
                divId.removeClass("has-success");
                divId.addClass("has-error");
            }else{
                divId.removeClass("has-error");
                divId.addClass("has-success");
            }
        });
        
        $('#password').keyup(function(event){
            
            var divPassword = $('#divPassword');
            
            if($('#password').val()==""){
                divPassword.removeClass("has-success");
                divPassword.addClass("has-error");
            }else{
                divPassword.removeClass("has-error");
                divPassword.addClass("has-success");
            }
        }); */

        $('#form').onsubmit = function () {

            
        
            var divId = $('#divId');
            var divPassword = $('#divPassword');

//아이디 알림창
            if($('#id').val()==""){
                modalContents.text("아이디를 입력하여 주시기 바랍니다.");
                modal.modal('show');
                
                divId.removeClass("has-success");
                divId.addClass("has-error");
                $('#id').focus();
                return false;
            }
            
            //패스워드 알림창
            if($('#password').val()==""){
                modalContents.text("패스워드를 입력하여 주시기 바랍니다.");
                modal.modal('show');
                
                divPassword.removeClass("has-success");
                divPassword.addClass("has-error");
                $('#password').focus();
                return false;
            }
            return false;
        };
                
            });
    
    $(function(){
    	let login = "<c:out value='${login}'/>";
    	console.log(login);
    	if(login=="false"){
    		$('#message').show();
    	}else{
    		$('#message').hide();
    	}
    });


          </script>
</body>
</html>