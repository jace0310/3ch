<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="template/header.jsp" %>
</head>
<body>
<%@ include file="template/header2.jsp" %>
	<div class="container">
      <div align="center">
	  <table class="table" style="width: 80%;">
      <hr class="featurette-divider">
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
				<c:forEach items="${reivewlist }" var="review">	
				    <tr>
					    <td><a href="rwdetail?idx=${review.reviewNum }">${review.reviewNum}</a></td>
					    <td><a href="rwdetail?idx=${review.reviewNum }">${review.title}</a></td>
					    <td><a href="rwdetail?idx=${review.reviewNum }">${review.review_date}</a></td>
					    <td><a href="rwdetail?idx=${review.reviewNum }">${review.memId}</a></td>
				    </tr>
				</c:forEach>
	    	</tbody>
	    </table>      
      </div>
    </div><!-- /.container -->


<%@ include file="template/footer.jsp" %>
</body>
</html>