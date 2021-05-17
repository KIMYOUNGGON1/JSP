<%@page import="util.Cookies"%>
<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>

<%request.setCharacterEncoding("utf-8"); %>

<%
	response.addCookie(Cookies.createCookie("AUTH", "", "/", 0)
			);
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>로ㄱ아웃</title>
</head>
<body>
<div class = "container">
	로그아웃하였습니다.
</div>
</body>
</html>