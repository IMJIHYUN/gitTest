<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/jQuery_class/scripts/jquery.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	//$("#chk_layer").hide();
	
	$(":checkbox").on("click",function(){
		alert(this.value);
	}); //돔 트리구조 안에서 checkbox만 가져와라!
	
	$("#btn").on("click",function(){ //jQuery 객체가 가지고 있는 DOM 노드 객체들을 id가 che_layer인 노드 객체의 자식노드에 추가해라!
		$("#chk_layer").show();//div 자체가 나오도록 한 부분
		$("<input type='checkbox' value='새로 생성된 체크박스'>").appendTo("#chk_layer");	//마지막 자식노드로 붙여라
	
	});
	$("#chk_layer").on("click",":checkbox",function(){
		alert("클릭된 체크박스의 값 : "+this.value);
	}); //어제 그거! 이벤트 소스의 부모노드. 이벤트 소스인 checkbox가 클릭되면 function()을 해라
	//#chk_layer 하위 노드들 중 : checkbox 조건은 만족하는 노드들에 click 이벤트 핸들러를 추가.(실행시점 뿐만 아니라 나중에 생성되는 것들에도 추가한다.)
});

</script>

<style type="text/css">
div{
	width: 100%;/*너비설정 - 화면의 너비를 100% 차지하도록 설정*/
	height: auto;/*높이설정 - 들어가 있는 내용물의 높이에 맞게 자동 설정되도록 설정*/
	border: 1px solid gray;/*경계선 (두께 모양 색) 설정*/
 	display: none; /*화면상 안보이도록 설정 div*/
}
</style>
</head>
<body>
체크박스 : <input type="checkbox" value="1번 체크박스" name="chk">
<input type="button" value="체크박스 생성" id="btn">
<p>
<div id="chk_layer"></div> <!-- div는 구간을 나누는 느낌으로 구역지정 / enter를 인식함/ div를 span으로 해보는 예제가 있었음--> 
<!-- 구역이 정해진 거당! 그래서 이 안에 생성되는 체크박스들만 설정이 들어가는 것이다. -->
<!-- 서버에 가서 디비에 있는 내용을 웹 브라우저가 받아서 보여주는데, 동적으로 처리하는건데, 이때 나중에 생겨도 이벤트를 붙여주는거!! on()에 2번째꺼 그거! -->

</body>
</html>