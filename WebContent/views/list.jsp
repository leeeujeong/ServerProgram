<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function(){
		fnMemberList();
	});
	
	function fnMemberList(){
		$.ajax({
			url: '/ServerProgram/memberList.do',
			type: 'get',
			dataType: 'json', 
			success: function(resData) { 
				$('#member_list').empty();
				if (resData.length == 0) {
					$('<tr>')
					.append( $('<td colspan="5">').text('등록된 회원이 없습니다.') )
					.appendTo('#member_list');
				} else {
					for (let i = 0; i < resData.length; i++) {
						$('<tr>')
						.append( $('<td>').text(resData[i].no))
						.append( $('<td>').text(resData[i].id))
						.append( $('<td>').text(resData[i].name))
						.append( $('<td>').text(resData[i].grade))
						.append( $('<td>').text(resData[i].point))
						.appendTo('#member_list');
					}
				}
			},
			error: function(){
				alert('회원등록 실패');
			}
		});
	}

</script>
</head>
<body>

	<a href="/ServerProgram/joinFrom.do">로그인 하러가기</a>
	<hr>
	<h1>회원 목록</h1>
	<table border="1">
		<thead>
			<tr>
				<td>회원번호</td>
				<td>아이디</td>
				<td>이름</td>
				<td>등급</td>
				<td>포인트</td>
			</tr>
		</thead>
		<tbody id="member_list"></tbody>
	</table>
	
</body>
</html>