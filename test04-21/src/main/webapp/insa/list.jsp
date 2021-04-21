<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
 
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>(주)엔클랩</title>
 
<link href="../css/style.css" rel="Stylesheet" type="text/css">
 
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
<script type="text/javascript">
 
  
</script>
 
</head> 
 
<body>
<jsp:include page="/menu/top.jsp" />
 
<DIV class='title_line'><a href="../">홈 </a> ..</DIV> 
  
<TABLE class='table table-striped'>
  <colgroup>
    <col style='width: 25%;'/>
    <col style='width: 25%;'/>
    <col style='width: 25%;'/>

  </colgroup>
 
  <thead>  
  <TR>
    <TH class="th_bs_left">인사번호</TH>
    <TH class="th_bs_left">이름</TH>
    <TH class="th_bs_left">등록날짜</TH>
  </TR>
  </thead>
  
  <tbody>
  <c:forEach var="insaVO" items="${list }">
    <c:set var="insa_num" value="${insaVO.insa_num }"/>
    <TR>  
      <TD class="td_bs_center">${insaVO.insa_num }</TD>
      <TD class="td_bs_center">
      <a href="./read.do?insa_num=${insa_num }">${insaVO.insa_name }</a>
      </TD>
      <TD class="td_bs_center">${insaVO.rdate.substring(0,10) }</TD>
    </TR>
  </c:forEach>
  </tbody>

</TABLE>
 <DIV class='content_bottom_menu'>
        <button type="button" 
                    onclick="location.href='./create.do'" 
                    class="btn btn-info">등록</button>
  </DIV>
 
<jsp:include page="/menu/bottom.jsp" />
</body>
 
</html> 
 