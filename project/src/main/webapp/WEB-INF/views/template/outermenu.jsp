<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html>
<div class="container">
	<div class="row">
	  <div class="col-md-3">
		<%for(int i=1; i<3; i++) {%>
	<c:forEach items="${alist }" var="product">
	    <a><img  src="../resources/imgs/outer/outer<%=i %>/outer<%=i %>-10.jpg" alt="..." class="img-responsive img-rounded"></a>
	    <br/>
	    <a style="font-size: 30px;" href="outDetail?idx=${product.productNum }">${product.productName}</a>
	    <br/>		
	    <a style="font-size: 25px;" href="outDetail?idx=${product.productNum }">${product.explan}</a>
	    <br/>
	    <a style="font-size: 25px;" href="outDetail?idx=${product.productNum }">${product.price}</a>
	    <br/>
	</c:forEach>
	    <%} %>
	  </div>  
	</div>
</div>