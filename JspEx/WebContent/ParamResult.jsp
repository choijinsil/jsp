<%@page import="com.mysql.jdbc.Driver.DBUtil"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8"); //한글깨짐

	String loginId=request.getParameter("loginId");	
	String password=request.getParameter("password");
	String userNm=request.getParameter("userNm");
	String userAdr=request.getParameter("userAdr");
	String userEm=request.getParameter("userEm");
	String gender=request.getParameter("gender");
	String[] hobby=request.getParameterValues("hobby");
	
	Connection conn= DBUtil.getMySQLConnection(); //db연결
	String sql="insert into login(loginId,password,userNm,userAdr,userEm,gender,hobby) values(?,?,?,?,?,?,?)";
	PreparedStatement pstmt=conn.prepareStatement(sql);
	
	pstmt.setString(1,loginId);
	pstmt.setString(2,password);
	pstmt.setString(3,userNm);
	pstmt.setString(4,userAdr);
	pstmt.setString(5,userEm);
	pstmt.setString(6,gender);
	
	for(int i=0; i<hobby.length; i++){
	pstmt.setString(7,hobby[i]);
	}
	
	pstmt.executeUpdate();
	
	DBUtil.close(pstmt);
	DBUtil.close(conn);
	
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인 id: <%=loginId%><br/>
비밀번호: <%=password %><br/>
사용자 이름: <%=userNm %><br/>
사용자 주소: <%=userAdr %><br/>
사용자 이메일: <%=userEm %><br/>
사용자 취미:
<%
	for(int i=0; i<hobby.length; i++){
		out.println(hobby[i]);
	}
%><br/>

사용자 성별: 
<%
if(gender.equals("M")){
	out.println(gender="남자");
}else{
	out.println(gender="여자");
}
%>

</body>
</html>