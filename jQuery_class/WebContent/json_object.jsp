<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/jQuery_class/jquery.js"></script>
<script type="text/javascript">
//javascript 구현 - 얘는 클래스 없이 그냥 객체를 만든다.


var mylip={
		"name":"sandyB", //lips price "lips price" EL표기법이 자바스크립트 표기법으로 썼었음! mylip["lips price"] <-이렇게 대괄호로 묶어주기! 
		"price":30000,
		"light":true,
		"wear":function(){
			alert(this.name+"를 바릅니다."); //메소드(객체의 속성인 함수)내에서 다른 속성을 접근할 때 this.속성명, this는 이 객체
		}
	};
	
	/*자바 스크립트 객체를 가지고 데이터 교환하는 데에 쓰겠다! 어차피 자바 스크립트에서 써왔던 객체!! 그걸 쓰겠다!(웹브라우저가 제공함!)*/


$(document).ready(function(){
	$("#bt1").on("click",function(){
		alert(mylip.name);
		mylip.maker="mac";
		alert(mylip.maker);
		mylip.wear();
	});
	$("#bt2").on("click",function(){
		
		
		//서버단으로 요청을 했다. 응답을 받으면 문자열(String)으로 받는다.
		var member='{"name":"김철수","id":"id-234","age":20,"hobby":["영화보기","공연보기"]}';
		
		//자바스크립트의 객체 표기법이 왔다갔다하는거지 자바스크립트 객체가 왓다갓다 하는게 아니다.
		//Javascript 객체로 변환
		//eval이 문자열을 받아서 자바스크립트 코드에 맞는 문법인지를 체크하고 맞으면 그대로 실행해준다.
		//JSON문자열을 자바스크립트 객체로 변환해준다.
		var memberObj=window.eval('('+member+')') //eval이 memver 객체를 만들어서 반환해준다.
		alert(memberObj.name+":"+memberObj.hobby[1]);
		var txt="이름 :"+memberObj.name+"<br>나이:"+memberObj.age;
		$("#layer").html(txt);
	});
});
	
	//orgjson.jar -API 서버가 보내준 문자열을 서비스 메서드에서 객체형태로 만들어야되는데, 그거 여기있는 메서드로 한다. 


</script>
</head>

<body>
<button id="bt1">클릭1</button>
<button id="bt2">클릭2</button>
<div id="layer"></div>
</body>
</html>