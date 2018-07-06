<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="carousel.css" rel="stylesheet">
<%@ include file="../../template/header.jsp" %>
</head>
<body>
<%@ include file="../../template/header2.jsp" %>
<div class="container">
	<!-- Three columns of text below the carousel -->
      <div id="mymy">
        <div class="col-lg-4">
          <img class="img-circle" src="../resources/imgs/outer/outer1/outer1-10.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>가디건</h2>
          <p></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
<table border="1" summary="">
	<tbody>
		<tr class=" displaynone  xans-record-">
			<th><span style="font-size:12px;color:#555555;">상품명</span></th>
			<td><span style="font-size:12px;color:#555555;">가디건</span></td>
		</tr>
		<tr>
			<th>판매가</th>
			<td><span style="font-size:12px;color:#f50000;font-weight:bold;"><strong id="span_product_price_text">11,800원 </strong><input id="product_price" name="product_price" value="" type="hidden"  /></span></td>
		</tr>
		<tr>
			<th>배송비</th>
			<td><span style="font-size:12px;color:#555555;"><span class="delv_price_B">
				<input id="delivery_cost_prepaid" name="delivery_cost_prepaid" value="P" type="hidden"  />
				<strong>2,000원</strong> (50,000원 이상 구매 시 무료)</span>
			</span></td>
		</tr>
		<tr class="">
			<th scope="row">수량</th>
				<td>
					<select>
					  <option>1</option>
					  <option>2</option>
					  <option>3</option>
					  <option>4</option>
					  <option>5</option>
					</select>			
				</td>
		</tr>
		<caption>상품 옵션</caption>
		<colgroup>
			<col style="width:115px;"/>
			<col style="width:auto;"/>
		</colgroup>
		<tbody>
			<tr>
				<th scope="row">색상</th>
					<td><p class="value">[필수] 
						<select>
						  <option>블랙</option>
						  <option>레드</option>
						  <option>3</option>
						  <option>4</option>
						  <option>5</option>
						</select>	
					</td>
		<tr class=""><th>사이즈</th>
			<td>[필수]</td>
		</tr>
		
		</tbody>
	</table>
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
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
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

<%@ include file="../../template/footer.jsp" %>
</body>
</html>