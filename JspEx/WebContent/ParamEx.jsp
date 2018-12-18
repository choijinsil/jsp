<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입 페이지</title>

</head>
<body>
<!--아이디, 패스워드, 이름, 주소, email, 취미, 성별
  취미- 체크박스, 라디오 - 단건-->

<form action="ParamResult.jsp" method="post">

	로그인 ID : <input type="text" name="loginId"><br/>
	비밀 번호 : <input type="password" name="password"><br/>
	이름: <input type="text" name="userNm"><br/>
	주소: <input type="text" name="userAdr"><br/>
	email: <input type="text" name="userEm"><br/> 
	
	<div>
		<label>취미: </label>
		<input type="checkbox" name="hobby" value="맛집탐방">맛집탐방
		<input type="checkbox" name="hobby" value="음악감상">음악감상
		<input type="checkbox" name="hobby" value="게임">게임		
	</div>
	<div>
		<label>성별: </label>
		<input type="radio" name="gender" value="M">남자
		<input type="radio" name="gender" value="F">여자
	</div>
	
	<br/><input type="submit" value="전송">
</form>
</body>
</html>