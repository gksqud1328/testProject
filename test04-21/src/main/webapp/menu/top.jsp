<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- <link href="${pageContext.request.contextPath}/css/top_menu.css" rel="stylesheet" type="text/css"> --%>

<div class="header"> 
<h1><a href="${pageContext.request.contextPath}/">엔클랩</a></h1> 
<div class="gnb"> <ul> 
<li><a href="#">로그인</a> 
<ul class="sub_gnb"> 
<c:choose>
<c:when test="${sessionScope.id == null}">
<li><A class='top_menu_link'  href='${pageContext.request.contextPath}/member/login.do' >Login</A> <span class='top_menu_sep'> &nbsp; </span> 
     <A class='top_menu_link'  href='${pageContext.request.contextPath}/member/create.do'>회원 가입</A><span class='top_menu_sep'>&nbsp;</span>
      </c:when>
      
       <c:otherwise>
         ${sessionScope.id } <A class='top_menu_link'  href='${pageContext.request.contextPath}/member/logout.do' >Logout</A> <span class='top_menu_sep'> &nbsp; </span>
        </c:otherwise>
      </c:choose>
</ul> 
</li> 
<li><a href="#">인사관리</a> 
<ul class="sub_gnb">
  <li> 
    <A class='top_menu_link'  href='${pageContext.request.contextPath}/insa/list.do'>직원목록</A><span class='top_menu_sep'>&nbsp;</span>
  </li>
</ul> 
</li> 
</div> 
</div> 
<div class="visual"></div>