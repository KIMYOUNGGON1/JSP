<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>

<%request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>로그인폼</title>
</head>
<body>
<div class = "container">
	<form action="<%=request.getContextPath() %>/ch10/textbook/sessionLogin.jsp" method = "post">
	아이디 <input type="text" name="id" size="10">
	암호 <input type="password" name="password" size = "10">
	<input type="submit" value="로그인">	
	</form>
</div>
</body>
</html>