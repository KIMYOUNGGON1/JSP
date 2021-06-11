<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">자유 게시판</a>
  
   <a class="navbar-brand" href="#">
    <img src="${pageContext.request.contextPath }/res/image/bbb.jpg" width="100" height="100" alt="">
  </a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="<%=request.getContextPath() %>/sample2/main"><i class="fas fa-home"></i> <span class="sr-only">(current)</span></a>
      </li>
      
      <c:if test="${empty sessionScope.userLogined }"> <%--로그인 안되었을 때 --%>
      <li class="nav-item">
        <a class="nav-link" href="<%=request.getContextPath() %>/sample2/member/signup"><i class="fas fa-user-plus"></i></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%=request.getContextPath() %>/sample2/member/login"><i class="fas fa-door-open"></i></a>
      </li>
      </c:if>
      
      <c:if test="${not empty sessionScope.userLogined }"> <%--로그인 되어 있을 때 --%>
      <li class="nav-item">
        <a class="nav-link" href="<%=request.getContextPath() %>/sample2/member/info"><i class="fas fa-info-circle"></i></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%=request.getContextPath() %>/sample2/member/logout"><i class="fas fa-door-closed"></i></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%=request.getContextPath()%>/sample2/board/write"><i class="fas fa-pencil-alt"></i></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%=request.getContextPath()%>/sample2/board/list"><i class="fas fa-list-ol"></i></a>
      </li>
      </c:if>
      
      <li class="nav-item">
        <a class="nav-link" href="<%=request.getContextPath() %>/sample2/member/list"><i class="fas fa-address-card"></i></a>
      </li>
    </ul>
  </div>
</nav>