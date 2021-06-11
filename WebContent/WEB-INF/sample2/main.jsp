<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>

<%request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>

<s2:navbar />
<div class = "container">
	
	
<div class="jumbotron">
	
  <h1 class="display-4"><i class="fab fa-java"></i>환영합니다.</h1>
  <p class="lead">기본 Servlet / JSP로 만든 회원, 게시판 어플리케이션입니다.</p>
  <hr class="my-4">
  <pre>프로그래밍을 처음 배워서 만들어 본 게시판 입니다. 회원가입부터 시작해보세요. 
  아래의 "제작 과정 확인"을 클릭하여 제작 과정을 확인할 수 있습니다.</pre>
  <a class="btn btn-primary btn-lg" href="<%=request.getContextPath() %>/sample2/member/signup" role="button">회원 가입</a>
  <a class="btn btn-primary btn-lg" href="https://blog.naver.com/dudrhs950/222293967427" role="button">제작 과정 확인</a>
</div>
	
	
</div>



</body>
</html>