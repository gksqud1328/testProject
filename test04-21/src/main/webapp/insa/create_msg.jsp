<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>(주)엔클랩</title>
 
<link href="../css/style.css" rel="Stylesheet" type="text/css">
<!-- <script type="text/JavaScript"
          src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
</head> 
<body>
<jsp:include page="/menu/top.jsp" flush='false' /> 
 
  <ASIDE class="aside_left">
    <A href=''>인사관리</A> >
    신규 등록
  </ASIDE>
  <ASIDE class="aside_right">
    <A href=''>목록</A>
    <!-- <span class='menu_divide' >│</span> --> 
  </ASIDE> 
 
  <div class='menu_line'></div>
   
<DIV class='message'>
  <fieldset class='fieldset_basic'>
    <UL>
      <c:choose>
        <c:when test="${cnt == 1 }">
          <LI class='li_none'>
            <span class='span_success'>새로운 공지를 등록했습니다.</span>
          </LI>
        </c:when>
        <c:otherwise>
          <LI class='li_none'>
            <span class='span_fail'>새로운 공지 등록에 실패했습니다.</span>
          </LI>
        </c:otherwise>
      </c:choose>
      <LI class='li_none'>
        <br>
        <c:choose>
          <c:when test="${cnt == 1 }">
            <button type='button' 
                         onclick="location.href='./create.do?insa_num=${param.insa_num}'"
                         class="btn btn-info">새로운 공지 등록</button>
          </c:when>
          <c:otherwise>
            <button type='button' 
                         onclick="history.back();"
                         class="btn btn-info">다시 시도</button>
          </c:otherwise>
        </c:choose>
                    
        <button type='button' 
                    onclick="location.href='./list.do?insa_num=${param.insa_num}'"
                    class="btn btn-info">목록</button>
      </LI>
     </UL>
  </fieldset>
 
</DIV>
 
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
 
</html>
   