

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
 
  <DIV class='title_line'>
    홈 > 목록 > 삭제
  </DIV>
  
  <div class='menu_line'></div>
 
<DIV class='message'>
  <fieldset class='fieldset_basic'>
    <UL>
      <c:choose>
        <c:when test="${cnt == 1}"> <!-- 글 삭제 성공 -->
          <LI class='li_none'>
            <span class='span_success'>『${insa_name }』 사원 정보를 삭제했습니다.</span>
          </LI>
        </c:when>
        <c:otherwise>    <!-- 글 삭제 실패 -->
          <LI class='li_none'>
            <span class='span_fail'>『${insa_name }』 사원 정보 삭제에 실패했습니다.</span>
          </LI>
          <LI class='li_none'>
            <span class='span_fail'>다시 시도해주세요.</span>
          </LI>
        </c:otherwise>
      </c:choose>
  
      <c:choose>
        <c:when test="${cnt == 1}">
          <LI class='li_none'>
            <button type='button' 
                        onclick="location.href='./list.do?insa_num=${param.insa_num}'"
                        class="btn btn-info">목록</button>                        
          </LI>
        </c:when>
        <c:otherwise>
          <LI class='li_none'>
            <button type='button' 
                        onclick="history.back();"
                        class="btn btn-info">재시도</button>
            <button type='button' 
                        onclick="location.href='./list.do?insa_num=${param.insa_num}'"
                        class="btn btn-info">목록</button>                        
          </LI>
        </c:otherwise> 
      </c:choose>
      
     </UL>
  </fieldset>
 
</DIV>
 
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
 
</html>

