<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/jQuery_class/jquery.js"></script>
<script type="text/javascript">

function abc()
{
	alert("abc");
}
$(document).ready(abc); //<-여기 abc는 함수이름:값! 매개변수로 전달! -함수 자체를 넘긴 것! document 객체가 만들어지면 이 함수를 호출한다. 페이지가 로딩될 때 document가 만들어진다.
//html문서가 (Web Browser에 의해) 로딩되는 시점에 매개변수로 전달한 abc 함수를 호출해라. - 1번 실행된다.
//html문서가 로딩된다라.........
$(document).ready(function(){ //여기 함수 이름은?안 쓰나?
	alert("abc2");
});
$(document).ready(abc()); //이건 함수의 리턴값을 매개변수로 넘긴 것
//html에서 자바스크립트 코드와 html을 분리할 때 이런식으로 쓴다 ! <button onclick="여기 자바스크립트 매서드 호출" -> <button 이렇게만 적어도 실행되면 html과 javascript가 분리된 것!

$(document).ready(function(){ //매서드의 매개변수로 함수를 전달한 것. - ready 함수는 처음에 로딩될 때 실행되니까, 처음에 페이지 뜰 때! 그때 이 클릭 이벤트 처리를 붙여준다.
	//함수의 기능
	//셀렉터 함수로 조회된 node들에 event 핸들러 추가. on("이벤트 종류",함수); 이벤트가 발생하면 함수를 실행.
	//td들을 조회한 다음! on->이벤트 핸들러 붙여주는것! ( 무슨 이벤트 붙일거야? , 무슨일 할 꺼야~?) 
	//이벤트가 발생하면 이 함수가 이벤트 핸들러처럼 작동한다.
	//this-이벤트 소스다! 이벤트가 발생한 td
	$("td").one("click",function(){ //.text()는 그 값을 반환해주고, .text("바꿀 값") 값을 수정해준다. val()과 비슷하다.
		alert($(this).text()); //이벤트 처리하는 함수 안에서 this는 이벤트가 발생한 td 객체다! 돔객체 그 자체를 넣는 것! 돔 객체를 찾아서 넣는게 아니라!
	}); //모든 td들 조회된다. -> on()
	
	//.one은 1번만 발생하는 이벤트핸들러! 
});

//$("셀렉터") 
//$(td) <- 이건 $(돔객체) 돔객체를 넣어버린 것! 
/*피티 38 예시*/
function selectorTest()
{
	$("td").off("click");//td들의 click 이벤트 핸들러를 해체 -> selectorTest()를 누르면 'ㅅ' 이벤트 해제된다.
	
	//$("tr:first").css("background","pink"); //tr들 중 첫번째 tr
	$("tr:first-child").css("background","brown");//tr들 중 첫번째 자식 노드인 tr
	$("tr:first-child").css("color","black");
	$("tr:not(:first-child)").css("color","white");
	$("tr:not(:first-child)").css("background","indianred");
	$("tr:eq(3)").css("color","white"); //전체 tr들 중에서 4번째 것. (배열 0부터 시작해서 )
	$("td:nth-child(3)").css("text-decoration","line-through");//td들 중에서 세번째자식 노드인 td(1부터 시작)
	$("td:nth-child(3)").css("color","white");
	//모든 테이블에서 자손인 td "table td"
	//모든 테이블에서 첫번째 td에서 자손이 3인거  "table first td:nth-child(3)"
	$("*#memberTb td:nth-child(3)").css("text-decoration","line-through");
	//id속성의 값이 memberTb인 요소의 자손 중 td. *는 생략이 가능하다.
}
function getText()
{
	//txt에 입력된 문자열 열기
	var txt=$("#txt").val();//*가 빠졌으니까 모든 애들 중! id가 txt인 노드 - text객체(입력양식 폼).val() -value값을 리턴, $(입력양식폼).val("값")-value값을 변경
	//alert(txt);
	$("#memberTb td").css("background","white");
	//$("#memberTb td:contains(계)").css("background","green");
	$("#memberTb td:contains("+txt+")").css("background","pink");
	//$("#txt").val("");//"" 빈 문자열로 변경
}
</script>
</head>
<body>
	<button onclick="selectorTest()">selectorTest()</button><br>
	<input type="text" id="txt"><input type="button" value="조회" onclick="getText();">
	<table border='1' id="memberTb">
		<tr>
			<td>ID</td>
			<td>이름</td>
			<td>주소</td>
			<td>전화번호</td>
			<td>마일리지</td>
		</tr>
		<tr>
			<td>aaaa</td>
			<td>이순신</td>
			<td>서울</td>
			<td>02-111-2222</td>
			<td>30000</td>
		</tr>
		<tr>
			<td>bbbb</td>
			<td>홍길동</td>
			<td>인천</td>
			<td>032-222-3333</td>
			<td>40000</td>
		</tr>
		<tr>
			<td>cccc</td>
			<td>유관순</td>
			<td>부산</td>
			<td>051-222-3333</td>
			<td>350000</td>
		</tr>
		<tr>
			<td>dddd</td>
			<td>장영실</td>
			<td>광주</td>
			<td>062-555-6666</td>
			<td>92000</td>
		</tr>
		<tr>
			<td>eeee</td>
			<td>김유신</td>
			<td>경주</td>
			<td>054-777-1222</td>
			<td>50000</td>
		</tr>
		<tr>
			<td>ffff</td>
			<td>계백</td>
			<td>부여</td>
			<td>042-421-7334</td>
			<td>940000</td>
		</tr>
		<tr>
			<td>gggg</td>
			<td>을지문덕</td>
			<td>평양</td>
			<td>042-421-7334</td>
			<td>32000</td>
		</tr>		
	</table>
	<br>
	<table border="1" id="productTb">
		<tr>
			<th>상품ID</th>
			<th>상품명</th>
			<th>제조사</th>
			<th>가격</th>
		</tr>
		<tr>
			<td>p-1</td>
			<td>LG 3D TV</td>
			<td>LG 전자</td>
			<td>3230000</td>
		</tr>
		<tr>
			<td>p-2</td>
			<td>파브 3D TV</td>
			<td>삼성 전자</td>
			<td>2000000</td>
		</tr>
		<tr>
			<td>p-3</td>
			<td>하우젠 냉장고</td>
			<td>삼성 전자</td>
			<td>1500000</td>
		</tr>
		<tr>
			<td>p-4</td>
			<td>x-note 노트북</td>
			<td>LG 전자</td>
			<td>990000</td>
		</tr>
		<tr>
			<td>p-5</td>
			<td>갤럭시 노트</td>
			<td>삼성 전자</td>
			<td>730000</td>
		</tr>		
		<tr>
			<td>p-6</td>
			<td>아이폰</td>
			<td>애플</td>
			<td>6320000</td>
		</tr>
		<tr>
			<td>p-7</td>
			<td>G패드</td>
			<td>LG 전자</td>
			<td>332000</td>
		</tr>		
		<tr>
			<td>p-8</td>
			<td>아이패드</td>
			<td>애플</td>
			<td>820000</td>
		</tr>		
	</table>
</body>
</html>