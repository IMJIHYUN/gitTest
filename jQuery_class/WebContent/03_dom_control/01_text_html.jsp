<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div{
	font-size: x-large;
	border: 1px solid gray;
	margin-top: 5px;
	padding: 5px;
}
</style>
<script type="text/javascript" src="/jQuery_class/jquery.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	//1.조회 - 매개변수가 없는 경우
	$("#showBtn").on("click",function(){
		var html=$("#dataLayer").html();//태그 포함  + 값 조회할 때!
		var text=$("#dataLayer").text();//태그 안에 있는 값 조회할 때!
		alert(html);
		alert(text);
	});
	
	//2.수정 - 매개변수가 있는 경우
	$("#txtBtn").on("click",function(){
		$("#showLayer").text("<b>진하게 나올까요~~?<b>"); //text(매개변수) -> 매개변수가 있을 경우!! 기존 값을 지우고 새로 바꿔서 showLayer의 하위 노드로 텍스트 노드가 되서 들어가게 된다!
		//선택된 element 노드의 하위를 매개변수 문자열로 변경한다.
	});
	$("#htmlBtn").on("click",function(){
		$("#showLayer").html("<b><a href ='/abc.jsp'>진하게 나올까요???</a></b>");
	});
	
});



</script>
</head>
<body>
<div id="dataLayer">
	<i><b>안녕하세요</b></i>
	<b>반갑습니다.</b>
</div>
<p>
<div id="showLayer">a</div>
<input type="button" value="조회버튼" id="showBtn">
<input type="button" value="text입력" id="txtBtn">
<input type="button" value="html입력" id="htmlBtn">
</body>
</html>



