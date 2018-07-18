
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="/js/bootstrap.min.js"></script>
<script src="/js/respond.js"></script>

<%@ include file="template/header.jsp" %>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>    
      <a class="navbar-brand" href="/shop01/">
	      <p style="font-size: 26px; font: oblique; font-family: monospace; color: #2E64FE;"><strong>CIELO</strong></p>
<!--           <img height="160%" alt="..."  src="resources/imgs/cielo.jpg" /> -->
      </a> 
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      </ul>
      <ul class="nav navbar-nav navbar-right">
       <li><a style="font-size: 26px; font: oblique; font-family: monospace; color: #2E64FE;" href="#">Login</a></li> 
  	   <li><a style="font-size: 26px; font: oblique; font-family: monospace; color: #2E64FE;" href="/shop01/join/">Join</a></li>
	   <li><a style="font-size: 26px; font: oblique; font-family: monospace; color: #2E64FE;" href="#">MyPage</a></li> 
	   <li><a style="font-size: 26px; font: oblique; font-family: monospace; color: #2E64FE;" href="#">Cart</a></li>
        <li class="dropdown"></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<form class="form-horizontal" role="form" method="post" action="javascript:alert( 'success!' );">
	<div class="cotaniner" align="center">
		<h1 style="font-size: 40px; font-style: italic;">회원가입</h1></br></br>
	</div>
       <div class="container" id="memId">
           <label for="memId" class="col-lg-2 control-label">아이디</label>
           <div class="col-lg-10">
               <input type="text" class="form-control onlyAlphabetAndNumber" id="memId" data-rule-required="true" placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30">
           </div>
       </div></br>
       
       <div class="container" id="memName">
           <label for="memName" class="col-lg-2 control-label">이름</label>
           <div class="col-lg-10">
               <input type="text" class="form-control onlyHangul" id="memName" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="15">
           </div>
       </div></br>
       
       <div class="container" id="memPassword">
           <label for="memPassword" class="col-lg-2 control-label">패스워드</label>
           <div class="col-lg-10">
               <input type="password" class="form-control" id="memPassword" name="excludeHangul" data-rule-required="true" placeholder="패스워드" maxlength="30">
           </div>
       </div></br>
       
       <div class="container" id="memPasswordCheck">
           <label for="memPasswordCheck" class="col-lg-2 control-label">패스워드 확인</label>
           <div class="col-lg-10">
               <input type="password" class="form-control" id="memPasswordCheck" data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
           </div>
       </div></br>
        
       <div class="container" id="email">
           <label for="email" class="col-lg-2 control-label">이메일</label>
           <div class="col-lg-10">
               <input type="email" class="form-control" id="email" data-rule-required="true" placeholder="이메일" maxlength="40">
           </div>
       </div></br>
        
       <div class="container" id="address">
			<label for="address" class="col-lg-2 control-label">주소</label>
           <div class="col-lg-10">
				<input type="text" class="form-control onlyHangulAndNumber"  name="address" data-rule-required="true" placeholder="한글 숫자만 입력가능합니다." maxlength="40">
           </div>
       </div></br>
       
       <div class="container" id="hp">
           <label for="hp" class="col-lg-2 control-label">휴대폰 번호</label>
           <div class="col-lg-10">
               <input type="tel" class="form-control onlyNumber" id="hp" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
           </div>
       </div></br>
       
       <div class="container">
           <label for="inputgender" class="col-lg-2 control-label">성별</label>
           <div class="col-lg-10">
               <select class="form-control" id="gender">
                   <option value="M">남</option>
                   <option value="F">여</option>
               </select>
           </div>
       </div></br>
       
       <div class="container" align="center">
           <div class="col-lg-offset-2 col-lg-10">
               <button type="submit" class="btn btn-danger">회원가입</button>&emsp;
               <button type="button" class="btn btn-default">뒤로</button>
           </div>
       </div>
</form>
 <script>
 
 //뒤로 가기 
	$(function(){
		var btn=false;
		$('button').eq(1).on('click',function(){
			window.history.back();
		});
	});
      
    $(function(){
        //모달을 전역변수로 선언
        var modalContents = $(".modal-contents");
        var modal = $("#defaultModal");
         
        $('.onlyAlphabetAndNumber').keyup(function(event){
            if (!(event.keyCode >=37 && event.keyCode<=40)) {
                var inputVal = $(this).val();
                $(this).val($(this).val().replace(/[^_a-z0-9]/gi,'')); //_(underscore), 영어, 숫자만 가능
            }
        });
         
        $('.onlyHangulAndNumber').keyup(function(event){
            if (!(event.keyCode >=37 && event.keyCode<=40)) {
                var inputVal = $(this).val();
                $(this).val($(this).val().replace(/[^ㄱ-ㅎ0-9]/gi,'')); // 한글, 숫자만 가능
            }
        });
         
        $(".onlyHangul").keyup(function(event){
            if (!(event.keyCode >=37 && event.keyCode<=40)) {
                var inputVal = $(this).val();
                $(this).val(inputVal.replace(/[a-z0-9]/gi,''));
            }

        });
     
        $(".onlyNumber").keyup(function(event){
            if (!(event.keyCode >=37 && event.keyCode<=40)) {
                var inputVal = $(this).val();
                $(this).val(inputVal.replace(/[^0-9]/gi,''));
            }
        });
         
        //------- 검사하여 상태를 class에 적용
        $('#id').keyup(function(event){
             
            var id = $('#id');
             
            if($('#id').val()==""){
            	id.removeClass("has-success");
            	id.addClass("has-error");
            }else{
            	id.removeClass("has-error");
            	id.addClass("has-success");
            }
        });
         
        $('#memPassword').keyup(function(event){
             
            var memPassword = $('#memPassword');
             
            if($('#memPassword').val()==""){
            	memPassword.removeClass("has-success");
            	memPassword.addClass("has-error");
            }else{
            	memPassword.removeClass("has-error");
            	memPassword.addClass("has-success");
            }
        });
         
        $('#memPasswordCheck').keyup(function(event){
             
            var memPasswordCheck = $('#memPasswordCheck').val();
            var memPassword = $('#password').val();
            var memPasswordCheck = $('#memPasswordCheck');
             
            if((memPassword=="") || (memPassword!=memPasswordCheck)){
            	memPasswordCheck.removeClass("has-success");
            	memPasswordCheck.addClass("has-error");
            }else{
            	memPasswordCheck.removeClass("has-error");
            	memPasswordCheck.addClass("has-success");
            }
        });
         
        $('#name').keyup(function(event){
             
            var name = $('#name');
             
            if($.trim($('#name').val())==""){
            	name.removeClass("has-success");
            	name.addClass("has-error");
            }else{
            	name.removeClass("has-error");
            	name.addClass("has-success");
            }
        });
         
        $('#email').keyup(function(event){
             
            var email = $('#email');
             
            if($.trim($('#email').val())==""){
            	email.removeClass("has-success");
            	email.addClass("has-error");
            }else{
            	email.removeClass("has-error");
            	email.addClass("has-success");
            }
        });
         
        $('#address').keyup(function(event){
             
            var email = $('#address');
             
            if($.trim($('#address').val())==""){
            	address.removeClass("has-success");
            	address.addClass("has-error");
            }else{
            	address.removeClass("has-error");
            	address.addClass("has-success");
            }
        });
         
        $('#hp').keyup(function(event){
             
            var hp = $('#hp');
             
            if($.trim($('#hp').val())==""){
            	hp.removeClass("has-success");
            	hp.addClass("has-error");
            }else{
            	hp.removeClass("has-error");
            	hp.addClass("has-success");
            }
        });
         
         
        //------- validation 검사
        $( "form" ).submit(function( event ) {
             
            var provision = $('#provision');
            var memberInfo = $('#memberInfo');
            var memId = $('#memId');
            var memPassword = $('#memPassword');
            var memPasswordCheck = $('#memPasswordCheck');
            var memName = $('#memName');
            var email = $('#email');
            var address = $('#address');
            var hp = $('#hp');
             
            //아이디 검사
            if($('#memId').val()==""){
                modalContents.text("아이디를 입력하여 주시기 바랍니다.");
                modal.modal('show');
                 
                memId.removeClass("has-success");
                memId.addClass("has-error");
                $('#memId').focus();
                return false;
            }else{
            	memId.removeClass("has-error");
            	memId.addClass("has-success");
            }
             
            //패스워드 검사
            if($('#memPassword').val()==""){
                modalContents.text("패스워드를 입력하여 주시기 바랍니다.");
                modal.modal('show');
                 
                memPassword.removeClass("has-success");
                memPassword.addClass("has-error");
                $('#memPassword').focus();
                return false;
            }else{
            	memPassword.removeClass("has-error");
            	memPassword.addClass("has-success");
            }
             
            //패스워드 확인
            if($('#memPasswordCheck').val()==""){
                modalContents.text("패스워드 확인을 입력하여 주시기 바랍니다.");
                modal.modal('show');
                 
                memPasswordCheck.removeClass("has-success");
                memPasswordCheck.addClass("has-error");
                $('#memPasswordCheck').focus();
                return false;
            }else{
            	memPasswordCheck.removeClass("has-error");
            	memPasswordCheck.addClass("has-success");
            }
             
            //패스워드 비교
            if($('#memPassword').val()!=$('#memPasswordCheck').val() || $('#memPasswordCheck').val()==""){
                modalContents.text("패스워드가 일치하지 않습니다.");
                modal.modal('show');
                 
                memPasswordCheck.removeClass("has-success");
                memPasswordCheck.addClass("has-error");
                $('#memPasswordCheck').focus();
                return false;
            }else{
            	memPasswordCheck.removeClass("has-error");
            	memPasswordCheck.addClass("has-success");
            }
             
            //이름
            if($('#memName').val()==""){
                modalContents.text("이름을 입력하여 주시기 바랍니다.");
                modal.modal('show');
                 
                memName.removeClass("has-success");
                memName.addClass("has-error");
                $('#memName').focus();
                return false;
            }else{
            	memName.removeClass("has-error");
            	memName.addClass("has-success");
            }
             
            //이메일
            if($('#email').val()==""){
                modalContents.text("이메일을 입력하여 주시기 바랍니다.");
                modal.modal('show');
                 
                email.removeClass("has-success");
                email.addClass("has-error");
                $('#email').focus();
                return false;
            }else{
            	email.removeClass("has-error");
            	email.addClass("has-success");
            }

            //주소
            if($('#address').val()==""){
                modalContents.text("주소를 입력하여 주시기 바랍니다.");
                modal.modal('show');
                 
                address.removeClass("has-success");
                address.addClass("has-error");
                $('#address').focus();
                return false;
            }else{
            	address.removeClass("has-error");
            	address.addClass("has-success");
            }
             
            //휴대폰 번호
            if($('#hp').val()==""){
                modalContents.text("휴대폰 번호를 입력하여 주시기 바랍니다.");
                modal.modal('show');
                 
                hp.removeClass("has-success");
                hp.addClass("has-error");
                $('#hp').focus();
                return false;
            }else{
            	hp.removeClass("has-error");
            	hp.addClass("has-success");
            }
             
         
        });
         
    });
     
</script>
<%@ include file="template/footer.jsp" %>
</body>
</html>