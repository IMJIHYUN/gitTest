<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/jQuery_class/scripts/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#eachBtn").on("click",function(){
		/*
			$.each() 가 utility적으로 쓰일 경우 : javascript의 배열이나 jQuery객체가 가지고 있는 NodeList들을 하나씩 전체 조회할 때 쓴다.
			1.배열 하나씩 전체 조회할 경우(for문 대신) 
				$.each(반복할 배열객체,함수객체) -함수는 배열에서 값을 하나씩 조회할때 마다 호출된다.
										 -함수에 매개변수 선언 시 반복횟수가 전달된다.(생략가능)
			2.jQuery 객체가 가지고 있는 Node List들을 하나씩 전체조회한다.
			$("selector") -> 셀렉터로 셀렉트를 했다. 그래서 문법에 맞게 돔들이 들어가는데, 
			$("selector").each(); // 여긴 이미 돌릴 대상을 알고있어서 함수만 .each(); 해주면 된다.
			
		*/
		var names=["김구","이순신","세종대왕","장영실","안중근","안창호"];
		var text="";
			/* for(var i=0; i<names.length; i++)
				{
					text=text+names[i]+" ";
				}
				alert(text);
				//귀찮으니까 jQuery를 이용해서 하면 넘나넘나 간단
			 */
		/* 	$.each(names,function(){
				//this: 반복될 때마다 나오는 값을 조회할 때, this를 사용한다!! -> 여기서는 이벤트 소스가 아니야! 배열에 있는 각각의 값을 의미함! 김구 이순신~안창호! 이렇게 된다.
				text=text+this+" ";
			});
			alert(text); */
			
			$.each(names,function(a){ //두번째 매개변수인 함수의 매개변수로 idx 넣으면 인덱스 - 숫자가 나온다 0부터!
				//this: 반복될 때마다 나오는 값을 조회할 때, this를 사용한다!! -> 여기서는 이벤트 소스가 아니야! 배열에 있는 각각의 값을 의미함! 김구 이순신~안창호! 이렇게 된다.
				text=text+(a+1)+"-"+this+" ";
			});
			alert(text);
			
			$("#ta").val(text); // textarea의 value값을 변경한다. 매개변수 안 쓰면 그 값을 조회!
			/********************************************************************/
			var txt2="";
			$("input").each(function(){
				txt2=txt2+this.value+" ";
			});
			alert(txt2);
	});
	//select -> change 이벤트 (선택 값이 바뀌었을 때 발생!)
	$("#hp1").on("change",function(){
		alert($(this).val());
		alert(this.selectedIndex);
	});
	$("#selBtn").on("click",function(){
		alert($("#hp1").val());
		alert($("#hp1").get(0).selectedIndex);
	});
	
	$("#chkbtn").on("click",function(){
		//input 태그 중에 name="hobby" (물론 클래스로 지정해서 구분해도 된다.)
		//$("셀렉터").length -> 조회된 Node들의 개수가 리턴된다.
		var cnt=$("input[name=hobby]:checked").length;
		alert(cnt); //배열의 사이즈가 0이면 'ㅅ' 아무것도 체크가 안 된거니까 
		if(cnt==0)
		{
			alert("취미를 선택하세요");
		}
	});
	
	//체크 박스의 체크여부는? check박스 객체의.checked 속성으로 알았음! true, false로 알았다구
	//모두선택 체크박스의 체크여부를 일단 조회하고 jQ.prop("속성명"), + 나머지 체크박스들의 속성 변경 : jQ.prop("속성명","속성값") 
	$("#allCheck").on("click",function(){
		//버튼이 눌리면 
		//일단 allCheck의 check 여부를 확인한다.
		
		
		//내가 짠 것>
		/* if($("#allCheck").prop("checked")) //this.checked
		{
			alert("Check 되었다.");
			$("input[name=hobby]").prop("checked",true);//요기 속성값은 뭐 아무거나 넣어도 된다. 빈문자열만 아니면 ㅇㅋ
			
		}
		else
		{
			alert("Check 안 되었다.");
			$("input[name=hobby]").prop("checked",false);//false
		}
		
		 */
		 
		//정답> this.checked가 true 혹은 false를 반환해주니까! 이 값을 넣어주면 끝!
		$("input[name=hobby]").prop("checked",this.checked);
		
		
 	});
	
});

</script>
<style type="text/css">
form *{
	margin: 5px; /* 외각 공간  vs 패딩 - 내부 공간*/
}
</style>
</head>
<body>
<button id="eachBtn">$.each()</button><br>
<form id="form1" name="form1" action=""	 method="post">
이름 : <input type="text" name="name" id="name"><br>
나이 : <input type="text" name="age" id="age"><br>

전화 : 
<select id="hp1" on>
	<option value="010">공통</option>
	<option>011</option>
	<option>016</option>
	<option>017</option>
	<option>018</option>
	<option>019</option>
</select>
<input type="button" value="선택" id="selBtn">
<br>

취미 : 
<label>영화감상 <input type="checkbox" name="hobby" value="영화감상"></label>
<label>음악감상 <input type="checkbox" name="hobby"  value="음악감상"></label>
<label>독서 <input type="checkbox" name="hobby"  value="독서"></label>
<label>운동 <input type="checkbox" name="hobby"  value="운동"></label>
<label>게임 <input type="checkbox" name="hobby"  value="게임"></label>
<input type="button" value="체크박스조회" id="chkbtn">

<label>모두선택<input type="checkbox" id="allCheck"></label> 

<div id="selectedHobby">선택된 체크박스 </div>
<br>
<textarea cols='50' rows='5' id="ta"></textarea>
</form>

</body>
</html>