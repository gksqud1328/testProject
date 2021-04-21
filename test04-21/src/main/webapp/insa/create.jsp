<%@ page contentType="text/html; charset=UTF-8" %>
 
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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.

1/js/bootstrap.min.js"></script>
 
</head> 
 
<body>
<jsp:include page="/menu/top.jsp" flush='false' />
  <DIV class="title_line">
    인사관리
  </DIV>
  
  <ASIDE class="aside_left">
    <A href=''>인사관리</A> > 
    신규 등록
  </ASIDE>
<!--   <ASIDE class="aside_right">
    <A href=''>목록</A>
    <span class='menu_divide' >│</span> 
  </ASIDE>  -->
 
  <div class='menu_line'></div>
  
  <DIV style='width: 100%;'>
    <FORM name='frm' method='POST' action='./create.do' class="form-horizontal">
      
      <div class="form-group">   
        <div class="col-md-12">
          <input type='text' class="form-control" name='insa_name' value='사원이름' placeholder="제목" required="required" style='width: 80%;'>
        </div>
      </div>   
      
     <!--  <div class="form-group">   
        <div class="col-md-12">
          <textarea class="form-control" name='ㄱ' id='content' rows='10' placeholder="내용">공지내용</textarea>
        </div>
      </div>
      
      <div class="form-group">   
        <div class="col-md-2">
          <input type='text' class="form-control" name='seqno' id='seqno' placeholder="글번호" required="required" style='width: 80%;'>
        </div>
      </div>
      
      <div class="form-group">   
        <div class="col-md-12">
          <input type='password' class="form-control" name='passwd'  value='' placeholder="패스워드" style='width: 20%;'>
        </div>
      </div> -->
      
      <DIV class='content_bottom_menu'>
        <button type="submit" class="btn btn-info">등록</button>
        <button type="button" 
                    onclick="location.href='./list.do?insa_num=${param.insa_num}'" 
                    class="btn btn-info">취소[목록]</button>
      </DIV>
       
    </FORM>
  </DIV>

  
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
 
</html>
 
  