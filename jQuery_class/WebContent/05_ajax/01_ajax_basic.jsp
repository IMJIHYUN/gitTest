<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/jQuery_class/scripts/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$("#ajaxBtn").on("click",function(){
		//서블릿으로 요청을 할거다 - AjaxServlet를 부름!
		//서버에 요청! 어디로 가야할지, 데이터 받았을 때의 처리는 설정을 해줘야 함. ppt에 57쪽 보면 자바스크립트 객체로, 주요 프로버티를 보내준다.
		//{"name":"value","name":"value"}
		$.ajax({
			
			"url":"/jQuery_class/ajax/AjaxServlet",//요청할 URL - 절대경로 url의 경우 ""을 빼도 되지만, 공백이 있을 경우 꼭 ""써야한다.
			"data" : "id="+$("#id").val(), //요청파라미터 설정
			"type":"post",//요청 방식 (http 메소드) - 화면상 상관 없고, 주소창이 달라지는건데, 이건 내부적으로 왔다갔다 하는 거라서 doGet인지, doPost 상관없
			//응답을 받았을 때
			"success":function(txt){ // txt는 서버에서 보내준 데이터
				//success - 정상 응답이 왔을 때 어떤 동작을 할 것인지 정의함 - 서버로부터 정상 응답 (200 OK)이 왔을 때, 처리할 함수를 등록.
				//함수 매개변수 : 1.응답 데이터를 받을 변수 선언   2.응답 상태 메시지 (success or fail 중 여기는 success), 3.XMLHttpRequest 객체(모든 매개변수 생략 가능!)
				//alert(txt); //동적처리
				$("#layer").append(txt+"<br>"); //화면에 출력 - 오류 응답 시에는 호출이 안 되니까! error에서 정의해주기
			},
			
			//응답을 받았을 때
			"error": function(xhr,status,errorMessage){
				//오류 응답이 왔을 때(200을 제외한 나머지 응답 코드) 처리할 함수 등록. -> 요청 결과가 에러일 때!
				//매개변수 : 1.XMLHttpRequest, 2.응답 메시지 - 정의되어있다. error, 3.HTTP 응답 메시지(모든 매개변수 생략 가능!)
				
				alert("에러가 났네요.. T_T*"+status+"-"+errorMessage);// 
			},
			//key값(beforeSend같은)의 경우 "" 생략 가능! 하지만 띄어쓰기 있을 경우 꼭 써주기
			"beforeSend":function(){
				//서버단(url에 설정한 경로로)으로 요청하기 전에 호출되는 함수 등록. 매개 변수는 없음!
				//함수가 return false를 하면 서버로 요청을 하지 않는다.(return true or 아무것도 안 하는 경우 true로 인식) -> 보통 요청 파라미터 검증 작업을 함.
			
				if(!$("#id").val()) //아이디 안 쓰고 그냥 버튼 눌렀을 경우!
				{
					alert("ID를 입력하세요.");
					$("#id").focus();
					return false; //서버로 요청하지 않는다. -> id 체크에서 뭔가 안 맞은 경우 return false해서 서버로 전송 안 되도록 햇엇는데, 그거랑 같은?
				}
			}
			
		}); 
	});
	
	$("#jsonBtn").on("click",function(){
		$.ajax({//속성은 상관없다.
			"url":"/jQuery_class/json/JSONServlet", //요청 URL
			"type":"POST", //요청방식(HTTP 메소드)
			"data": {"id":$("#id").val()},//요청 파라미터 2가지 - 쿼리 스트링 or $ 여기 띄워야 해  자바스크립트에서 EL값 출력 할 수 잇어서  EL인데 문법이 틀려서 {"name":"value","name":"value"}를 조회해서 <-형태를 바꿔서 보내준다.
			
			"dataType":"json", //응답 데이터 문자열을  Javascipt 객체로 변환해서  success 함수에 전달하라.
			//"dataType" : "text", ->응답 데이터 문자열을 text 모양으로 보여줌!
			"beforeSend":function(){ 
			if(!$("#id").val())
			 {
				 alert("조회할 아이디를 입력하세요!");
				 $("#id").focus();//focus() ??
			     $("#layer").empty();//아이디값 비운다? - layer의 밑에 있는 부분을 지운다.
				 return false;
			 }
			},
			"success":function(obj){
				//alert(obj);
				//alert(obj.name)//타입을 문자열로 받아서 그냥  객체문자열로 출력이 된 것임  => 이때 eval()을 사용해서 변환해줘야 한다,
				var txt ="ID :"+obj.id+"<br>이름 :"+obj.name+"<br>마일리지:"+obj.mileage+"<br>";
				$("#layer").html(txt);
			},
			"error":function(){
				alert("ID로 회원 정보 조회 도중 오류 발생");
			}
		});
	});
});
</script>
</head>
<body>

ID : <input type="text" name="id" id="id">
<input type="button" value="ajax요청" id="ajaxBtn">
<input type="button" value="json요청" id="jsonBtn">

<hr>

<div id="layer"></div>
</body>
</html>




