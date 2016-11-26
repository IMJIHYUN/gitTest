<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/jQuery_class/scripts/jquery.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	$("#listBtn").on("click",function(){
		//버튼이 눌리면! 
		$.ajax({ //자바스크립트 객체로 ! ;ㅅ; 만들어서 ㄱㄱ
			"url":"/jQuery_class/json/servlet/MemberListServlet",
			//요청 파라미터가 없어서 생략했음 
			//타입도 doGet이라 생략했음
			"type":"GET",
			"dataType":"json",
			"success":function(obj){ //이때는 obj가 문자열로 넘어오는거얏 eval로 바꾸거나, "dataType":"json",<-얘를 쓰거나!
				//alert("성공부분 완성하기");
				//반복문 돌려서 붙여줘야 해! 
				var text="";
				$.each(obj,function(){
					text=text+"<tr><td>"+this.id+"</td><td>"+this.name+"</td><td>"+this.email+"</td><td>"+this.mileage+"</td><td>"+this.marriage+"</td></tr>"
				});
				//tbody에 조회 결과 붙이기!
				//$("#tbody").append(text); //append 계속 누적된다!
				//$("#tbody").empty().append(text);//기존거 지우고 갱신
				$("#tbody").html(text);
			},
			"error":function(){
				alert("실패");
			}
			
		
		});
	});
});
</script>

</head>
<body>
<!--  #listBtn 클릭 ->MemberListServlet 요청(Ajax요청) ->MemberService.getMemberList()->ArrayList<Member>리턴 
				  ->MemberListServlet에서 JSON 표기버을 이용해   [  ] 로 응답처리
				  ->#tbody에 응답된 회우너 리스트를 출력
-->
	<button id="listBtn">회원 목록 조회</button>
	<hr>
	<table border=1>
		<thead>
			<tr>
				<td>ID</td>
				<td>이름</td>
				<td>이메일 주소</td>
				<td>마일리지</td>
				<td>결혼여부</td>
			</tr>
		</thead>
		<tbody id="tbody">
			
		
		</tbody>
	</table>

</body>
</html>

<!-- 반복문! for문 돌려서 하는 방법이랑
	for(int i=0; i<obj.length; i++)
	{
		obj[i].name
	}
, $.each(배열,function(){this}) 여기서 this는 obj[i]-->