<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>

<%request.setCharacterEncoding("utf-8"); %>

<%
pageContext.setAttribute("attr1", "pageVal1");
request.setAttribute("attr1", "pageVal1");
session.setAttribute("attr1", "pageVal1");
application.setAttribute("attr1", "pageVal1");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class = "container">
	${attr1 }
</div>
</body>
</html>