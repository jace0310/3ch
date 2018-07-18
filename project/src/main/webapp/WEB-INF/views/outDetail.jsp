<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<%@ include file="template/header.jsp" %>
<style>
	.demo {cursor:pointer}
</style>
</head>
<body>
<%@ include file="template/header2.jsp" %>
<div class="container">
	<!-- Three columns of text below the carousel -->
      <div id="mymy">
		<div class="col-lg-4" style="max-width:500px; " >
		  <img class="mySlides" src="../resources/imgs/outer/outer1/outer1-14.jpg" style="width:80%">
		  <img class="mySlides" src="../resources/imgs/outer/outer1/outer1-10.jpg" style="width:80%">
		  <img class="mySlides" src="../resources/imgs/outer/outer1/outer1-17.jpg" style="width:80%">
		
		  <div class="w3-row-padding w3-section">
		    <div class="w3-col s4">
		      <img class="demo w3-opacity w3-hover-opacity-off" src="../resources/imgs/outer/outer1/outer1-14.jpg" style="width:40%" onclick="currentDiv(1)">
		    </div>
		    <div class="w3-col s4">
		      <img class="demo w3-opacity w3-hover-opacity-off" src="../resources/imgs/outer/outer1/outer1-10.jpg" style="width:40%" onclick="currentDiv(2)">
		    </div>
		    <div class="w3-col s4">
		      <img class="demo w3-opacity w3-hover-opacity-off" src="../resources/imgs/outer/outer1/outer1-17.jpg" style="width:40%" onclick="currentDiv(3)">
		    </div>
		  </div>
		</div>
<script>
	var slideIndex = 1;
	showDivs(slideIndex);
	
	function plusDivs(n) {
	  showDivs(slideIndex += n);
	}
	
	function currentDiv(n) {
	  showDivs(slideIndex = n);
	}
	
	function showDivs(n) {
	  var i;
	  var x = document.getElementsByClassName("mySlides");
	  var dots = document.getElementsByClassName("demo");
	  if (n > x.length) {slideIndex = 1}
	  if (n < 1) {slideIndex = x.length}
	  for (i = 0; i < x.length; i++) {
	     x[i].style.display = "none";
	  }
	  for (i = 0; i < dots.length; i++) {
	     dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
	  }
	  x[slideIndex-1].style.display = "block";
	  dots[slideIndex-1].className += " w3-opacity-off";
	}

	$(document).ready(function(){
	    $('.__count_range input[count_range]').click(function(e){
	        e.preventDefault();
	        var type = $(this).attr('count_range');
	        var $count = $(this).parent().children('input.count');
	        var count_val = $count.val(); // min 1 max 20
	        if(type=='m'){
	            if(count_val<2){
	            	alert("1개 이하 선택하실수 있습니다.")
	                return;
	            }
	            $count.val(parseInt(count_val)-1);
	        }
	        if(type=='p'){
	        	if(count_val>19){
	            	alert("20개 이상 선택하실수 있습니다.")
	                return;
	        	}
	            $count.val(parseInt(count_val)+1);
	        }
	    });
	});
</script>
        <div class="col-lg-4">
		<table class="" >
		<tbody>
		<tr class="">
			<th style="text-align: center;"><span style="font-size:16px;color:#555555;">상품명</span></th>
			<td style="text-align: center;"><span style="font-size:16px;color:#555555;">가디건</span></td>
		</tr>
		<tr>
			<th style="text-align: center;">판매가</th>
			<td style=" text-align:center;"><span style="font-size:16px; color:#f50000; font-weight:bold;">11,800원 </span></td>
		</tr>
		<tr>
			<th style="text-align: center;">배송비</th>
			<td><span style="font-size:12px;color:#555555;"><span class="delv_price_B">
				<input id="delivery_cost_prepaid" name="delivery_cost_prepaid" value="P" type="hidden"  />
				<strong>2,000원</strong> (50,000원 이상 구매 시 무료)</span>
			</span></td>
		</tr>
		<tr class="">
			<th scope="row" style="text-align: center;">수량</th>
				<td><p class="value">
					<div class="__count_range">
					  <input readonly="readonly" class="count" value="1" name="">
					  <input value="-" count_range="m" type="button">
					  <input value="+" count_range="p" type="button">
					</div> 
				</td>
		</tr>
		<caption style="font-size: 35px; text-align: center;">상품 옵션</caption>
		<colgroup>
			<col style="width:150px; height: 300px;"/>
		</colgroup>
			<tr>
				<th scope="row" style="text-align: center;">색상</th>
					<td><p class="value">&emsp;&emsp;[필수] 
						<select>
						  <option class="" id="" value="">레드</option>
						  <option class="" id="" value="">화이트</option>
						  <option class="" id="" value="">블랙</option>
						</select>	
					</td>
			<tr class="">
			<th style="text-align: center;">사이즈</th>
				<td><p class="value">&emsp;&emsp;[필수]
					<select>
					  <option class="" id="" value="">S</option>
					  <option class="" id="" value="">M</option>
					  <option class="" id="" value="">L</option>
					</select>					
				</td>
			</tr>
	</table>
	<br/>
	<div align="center">
		<button style="width: 150px; height: 70px;" type="button" class="btn-success"  >장바구니</button>
		<button style="width: 150px; height: 70px;" type="submit" class="btn-danger" >결제</button>
	</div>

</div>
<!-- //상세정보 내역 -->

      </div><!-- /.row -->
      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading"> <span class="text-muted"></span></h2>
          <p class="lead"></p>
        </div>
        <div class="col-md-5 col-md-pull-7">
        <%for(int i=1; i<17; i++) {%>
          <img class="" src="../resources/imgs/outer/outer1/outer1-1<%=i %>.jpg" alt="">
          <br/><br/>
          <%} %>
        </div>
      </div>

      <hr class="featurette-divider">
    <!--후기 시작 -->    
    <div align="center">
    <table class="table" style="width: 60%;">
    	<thead align="center">
	    	<h1>후기 게시판</h1>
	    		<tr>
	    			<th>번호</th>
	    			<th>제목</th>
	    			<th>날짜</th>
	    			<th>작성자</th>
	    		</tr>
    	</thead>
    	<tbody>
			<c:forEach items="${reviewlist }" var="review">	
			    <tr>
				    <td><a href="../../rwdetail?idx=${review.reviewNum }">${review.reviewNum}</a></td>
				    <td><a href="../../rwdetail?idx=${review.reviewNum }">${review.title}</a></td>
				    <td><a href="../../rwdetail?idx=${review.reviewNum }">${review.review_date}</a></td>
				    <td><a href="../../rwdetail?idx=${review.reviewNum }">${review.memId}</a></td>
			    </tr>
			</c:forEach>
    	</tbody>
    </table>  
   	</div>
<!--후기 끝 -->    

    </div><!-- /.container -->

<%@ include file="template/footer.jsp" %>
</body>
</html>