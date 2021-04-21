<%@ page contentType="text/html; charset=UTF-8"%>
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

<style type="text/css">
.my-box { 
	border:3px solid; padding:10px; 
	text-align: center;
	font-size: xx-large;
	font-weight: bold;
}

td{
	text-align: center;
	padding:5px;	
}

th{
	font-weight: bold;
	text-align: center;
	padding:5px;
	background-color:yellow;	
}
</style>

</head>

<body>

<jsp:include page="/menu/top.jsp" flush='false' />
  <DIV class='title_line'>
    <A href="../"> 홈 </A> > <A href="../insa/list.do"> 인사목록 </A> > ${insaVO.insa_name }
  </DIV>
  
  <ASIDE class="aside_right">
    <A href="javascript:location.reload();">새로고침</A>
    <span class='menu_divide' > | </span>
    <A href="./create.do">등록</A>
    <span class='menu_divide' > | </span> 
    <A href='./list.do'>목록</A>
    <span class='menu_divide' > | </span> 
    <A href="./update.do?insa_num=${param.insa_num }">수정</A>
    <span class='menu_divide' > | </span> 
    <A href="./read_delete.do?insa_num=${param.insa_num }">삭제</A> 
  </ASIDE> 
  
  <div class='menu_line'></div>

  <FORM name='frm_update' id='frm_update' method='GET' action='./update.do'>
      <input type="hidden" name="insa_num" value="${insa_num}">
      <fieldset class="fieldset">
        <ul>
          <li class="li_none" style='border-bottom: solid 1px #AAAAAA;'>
<table align="center" border = "2px" style="width:700; height:300px; z-index:1; left: 0px; top: 0px;">
   
   <DIV class='my-box'>개 인 이 력 카 드</DIV> <br><br>
   1. 신상기록
   <tr>
 	<th>성 명</th> 
 		<td>${insaVO.insa_name }</td>
 	<th>생년월일</th> 
 		<td>0000 년 00 월 00 일</td>
 	<th>성 별</th> 	
 		<td>무엇일까?</td>
   <!-- <th height = "70px" colspan="6"  style="text-align:center; height:50px; background-color:yellow;">개인이력카드</th> -->
   </tr>
  
   <tr>
      <th>소속회사</th> 
      	<td colspan="2">(주)엔클랩</td>
      <th>프로젝트 가능 일자</th>
      	<td colspan="2"></td>
   </tr>
   <tr>
	  <th>부 서</th> 
	  	<td colspan="2">SI/SM 사업부</td>
	  <th>직위</th>
	  	<td colspan="2">프로</td>
   </tr>
   <tr>
   	  <th>주 소</th>
   	    <td colspan="5">주우우우소오오오</td> 
   <br><br>
   <!-- 2학력 -->
     
   
</table>
2.학력
<table align="center" border = "2px" style="/* position:absolute; */ width:490px; height:200px; z-index:1; left: 50px; top: 350px;">
   
   <tr>
      <td style="text-align:center; height:50px; background-color:yellow;" colspan="3">학력사항</td>
   </tr>
   <tr>
      <td colspan="2">학교명</td><td>졸업일</td>
   </tr>
   <tr>
      <td>(2,3 년제 학위)</td><td>학과</td><td>졸업</td>
   </tr>
   <tr>
      <td>서울대학교(4년제 학위)</td><td>무슨 학과</td><td>2000년 02월 졸업</td>
   </tr>
</table>
3.자격증
<table align="center" border = "2px" >
   
   <tr style="text-align:center; height:50px; background-color:yellow;">
      <td>자격증(명)</td><td>취득일</td>
   </tr>
   <tr>
      <td>정보처리기사</td><td>2020.11</td>
   </tr>
   <tr>
      <td>&nbsp;</td><td>&nbsp;</td>
   </tr>
   <tr>
      <td>&nbsp;</td><td>&nbsp;</td>
   </tr>
</table>
4.경력
<table align="center" border = "2px" >
   <tr style="text-align:center; height:50px; background-color:yellow;">
      <td>회사명</td><td>시작일</td><td>종료일</td><td>직위</td><td>담당업무</td>
   </tr>
   <tr>
      <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
   </tr>
   <tr>
      <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
   </tr>
   <tr>
      <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
   </tr>
</table>
5.교육
<table align="center" border = "2px" >
   <tr style="text-align:center; height:50px; background-color:yellow;">
      <td>교육명</td><td>시작일</td><td>종료일</td><td>기관</td>
   </tr>
   <tr>
      <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
   </tr>
</table>
6.보유기술
<table align="center" border = "2px" >
   <tr style="text-align:center; height:50px; background-color:yellow;">
      <td>보유기술 및 외국어능력</td><td>숙련도(상,중,하)</td>
   </tr>
   <tr>
      <td>&nbsp;</td><td>&nbsp;</td>
   </tr>
</table>

<form id="hide">
   <input type="hidden" name="insa_num"value="${insaVO.insa_num}">
</form>

<input type="submit" id="create" value="등록">
<input type="submit" id="update" value="수정">
<input type="submit" id="delete" value="삭제">
<a href = "list.do"><button>목록</button></a>
          </li>
        </ul>
      </fieldset>
  </FORM>

<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>

</html>
