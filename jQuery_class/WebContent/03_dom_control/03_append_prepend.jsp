<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/jQuery_class/scripts/jquery.js"></script>
<script type="text/javascript">
var cnt=1; //전역변수! - 어떤 함수든지 쓸 수 있다.


//append()/prepend() -after()/before() => 새로운 것을 추가할 때 사용
//appendTo()/prependTo() - insertAfter()/insertBefore() -> DOM Tree에 있는 Node를 옮길 때 사용
$(document).ready(function(){
	$("#appendBtn").on("click",function(){
		//$("#layer").html("<b>안녕</b>");
		//$("붙일 부모노드 셀렉트").append("붙일 노드")
		//$("#layer").append("<b>안녕"+ cnt++ +"</b>");
		$("#layer").appendTo("<span>안녕</span>");
		$("<span>안녕</span>").appendTo("#layer");
		
	});

	//tr을 만들어서 넣으라는 것은? $("<tr>")
			//tr을 찾아라! -> $("tr")
			
	$("#prependBtn").on("click",function(){
		//$("#layer").prepend("<u>Hello</u>");
		$("<u>Hi!</u>").prependTo("#layer");
	});
	
	$("#moveBtn").on("click",function(){

		//<i>들을 #layer의 마지막 자식노드로 옮기기.
		//$("#layer").append($("i"));
		$("i").appendTo("#layer");
	});
	
	//삭제 예시 
	$("#clearBtn").on("click", function(){
		//$("#tbody").remove();// select된 #tbody를 제거
		
		/*
		$("#tbody").empty();//id가 tbody인 노드의 자식노드들을 제거 
		$("#tbody").append("<tr><td>새ID</td><td>새이름</td><td>새나이</td></tr>");
		
		하나로 합 칠 수 있다.
		 */
		$("#tbody").empty().append("<tr><td>새ID</td><td>새이름</td><td>새나이</td></tr>");
		//처리한 jQuery객체를 다시 리턴해서 다른 메소드를 호출할 수 있도록 처리
		//메소드 체이닝 : 대부분의 DOM 노드 객체를 처리하는 jQuery메소드들이 메소드 체이닝을 지원한다!
		
	});
});


</script>
<style type="text/css">
table{
	width: 500px;
}
</style>
</head>
<body>

<div id="layer" style="width: 500px; height: auto; min-height:50px; border: 1px dashed blue; margin-bottom: 10px;">기준점</div>
<i><b>이것은 옮겨질 예정입니다.</b></i><br>
<i><b>이것은 옮겨질 예정입니다.</b></i><br>
<i><b>이것은 옮겨질 예정입니다.</b></i><br>
<i><b>이것은 옮겨질 예정입니다.</b></i><br>
<i><b>이것은 옮겨질 예정입니다.</b></i><br>
<hr>
<button id="appendBtn">append예제</button>
<button id="prependBtn">prepend예제</button>
<button id="moveBtn">dom node 옮기기</button>
<hr>
<p>
<table border='1'>
<thead>
	<tr>
		<td>ID</td>
		<td>이름</td>
		<td>나이</td>
	</tr>
</thead>
<tbody id="tbody">
	<tr>
		<td>id-a</td>
		<td>홍길동</td>
		<td>20</td>
	</tr>
	<tr>
		<td>id-b</td>
		<td>이순신</td>
		<td>30</td>
	</tr>	
	<tr>
		<td>id-c</td>
		<td>김유신</td>
		<td>25</td>
	</tr>			
</tbody>
<tfoot>
	<tr>
		<td colspan='3'><button id="clearBtn">내용 삭제</button></td>
	</tr>
</tfoot>
</table>
</body>
</html>