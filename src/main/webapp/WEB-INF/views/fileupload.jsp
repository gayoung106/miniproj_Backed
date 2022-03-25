<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class = "container">
<form action="/fileupload" method="post" enctype="multipart/form-data">
<input type ="file" name="file"/>
<input type ="submit" name="업로드"/>

</form>
<!--"/fileupload"에서는 반드시 enctype="multipart/form-data" 꼭 해줘야 함  -->
</div>
</body>
</html>