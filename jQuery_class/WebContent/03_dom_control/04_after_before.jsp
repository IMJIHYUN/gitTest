<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
	padding: 15px;
}
</style>
<script type="text/javascript" src="/jQuery_class/scripts/jquery.js"></script>
<script type="text/javascript">
//11월 11일 
//div안에 div들이 있다! div는 묶어준 다음 1칸 enter가 들어감 / span은 그냥 묶음
//ppt 46
$(document).ready(function(){
	$("#afterBtn").on("click",function(){
		
		//$("#child2").after("<div>삽입할 내용 - after</div>");//#child2 노드의 다음 형제 노드로 추가.
		$("<div>삽입될 내용 - insertAfter</div>").insertAfter("#child2");
		//$("#child2").insertAfter("<div>삽입될 내용 - insertAfter</div>"); - 이거 안 되는 이유 뭐지?
		
		});
	
		$("#beforeBtn").on("click",function(){
			//$("#child2").before("<div>삽입될 내용 - before</div>");
			$("<div>삽입될 내용 - before</div>").insertBefore("#child2");
		});
		
		$("#allBtn").on("click", function(){//.child는 밑에 보면 클래스 속성!
			$(".child").after("<span>style='color:red'>삽입될 내용입니다.<span>");
		});
		
		
		
});

</script>

</head>
<body>
<div id="root">
	<div id="child1" class="child" style="background-color: lime;">1번</div>test
	<div id="child2" class="child" style="background-color: pink;">2번</div>
	<div id="child3" class="child" style="background-color: skyblue;">3번</div>	
	<div id="child4" class="child" style="background-color: lightgray;">4번</div>
</div>
<hr>
<button id="afterBtn">after버튼</button>
<button id="beforeBtn">before버튼</button>
<button id="allBtn">all 버튼</button>
</body>
</html>