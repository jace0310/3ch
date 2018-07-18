<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="template/header.jsp" %>
</head>
<script type="text/javascript">
	 $(function(){
		var btn=false;
		$('input').attr('readonly','readonly');
		$('button').eq(0).on('click',function(){
			if(btn){
				$('form').submit();
			}else{
				$('.edit').removeAttr('readonly');
				$('#memId').removeAttr('review_date');
				$('h1').html('수정 페이지');
				btn=true;
			}
		});
		$('button').eq(1).click(function(){
			if(btn){
				$('.edit').attr('readonly','readonly');
				$('h1').html('상세 페이지');
				btn=false;
			}else{
				window.history.back();
			}
		});
		$('button').eq(2).click(function(){
			var param='idx='+$('#reviewNum').val();
			$.post('./delete',param,function(){
				window.location.href='./rev_bbs';
			});
		});
	}); 
</script>
<body>
	<h1>상세 페이지</h1>
<%@ include file="template/header2.jsp" %>
	<div class="container">
		<div align="center">
	      <hr class="featurette-divider">
			<form action="update" method="post">
				<div>
					<label for="reviewNum">번호:</label>
					<input type="text" value="${review.reviewNum }" name="reviewNum" id="reviewNum" />
				</div>
				<div>
					<label for="title">제목:</label>
					<input type="text" value="${review.title }" class="edit" name="title" id="title" />
				</div>
				<div>
					<label for="contents">내용:</label>
					<input type="text" value="${review.contents }" class="edit" name="contents" id="contents" />
				</div>
				<div>
					<label for="review_date">날짜:</label>
					<input type="text" value="${review.review_date }" name="review_date" id="review_date" />
				</div>
				<div>
					<label for=memId> I D :</label>
					<input type="text" value="${review.memId }" name="memId" id="memId" />
				</div>
				<button type="button">수정</button>
				<button type="button">뒤로</button>
				<button type="button">삭제</button>
			</form>
		</div>
	</div>
<%@ include file="template/footer.jsp" %>
</body>
</html>