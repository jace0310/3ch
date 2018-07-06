<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="carousel.css" rel="stylesheet">
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
<!--         <div class="col-lg-4">
          <img class="img-circle" src="../resources/imgs/outer/outer1/outer1-10.jpg" alt="Generic placeholder image" width="300" height="300">
		<br/>
          <h2>가디건</h2>
          <p></p>
        </div>/.col-lg-4 -->

<div class="w3-content" style="max-width:500px; " >
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
				<td><p class="value">&emsp;&emsp;[필수] 
					<select style="align-items: center;">&emsp;&emsp;
					  <option>1</option>
					  <option>2</option>
					  <option>3</option>
					  <option>4</option>
					  <option>5</option>
					</select>			
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
		<button style="size: auto;" type="button" class="btn-success"  >장바구니</button>
		<button style="size: auto;" type="submit" class="btn-danger" >결제</button>
	</div>

</div>
<!-- //상세정보 내역 -->

      </div><!-- /.row -->
      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-5">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading"> <span class="text-muted"></span></h2>
          <p class="lead"></p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="" src="../resources/imgs/outer/outer1/outer1-11.jpg" alt="">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading"> <span class="text-muted"></span></h2>
          <p class="lead"></p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

    </div><!-- /.container -->

<%@ include file="template/footer.jsp" %>
</body>
</html>