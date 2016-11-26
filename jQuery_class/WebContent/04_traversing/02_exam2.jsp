<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.desc, #tb tbody{
	cursor: pointer;
}
table{
	width: 400px;
}
td, th{
	padding: 5px;
}
</style>
<script type="text/javascript" src="/jQuery_class/scripts/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//$("셀렉터").find("셀렉터 표현식") => 조회된 노드들의  '자손' 노드들 중에서 표현식과 일치하는 것들을 조회하는 것.
	//$("div").css("background","pink").find("a").css("text-decoration","none");
	
	//$("셀렉터").children(["셀렉터 표현식"]) => 조회된 노드들의 '자식' 노드들 중에서 표현식과 일치하는 것들을 조회하는 것.
	$("div").css("background","mistyrose").children("a").css("text-decoration","none");
	//span들 중 클래스가 desc인 애들 중!
	$("span.desc").on("click",function(){ //궁금증
		$("span.desc").next().text("");
		//이벤트가 발생한 노드의 다음 노드
		$(this).next().text("여기가 선택되었습니다~");
	});
	
	/*테이블(#tb)의 row를 클릭하면 클릭된 행(row)의 배경색을 변경하고
	선택된 행의 글번호를 alert으로 출력한다.
	-단 이전에 클릭되었던 행의 배경색은 원상복귀시킨다.*/
	$("#tbody tr").on("click",function(){
		//$("").next().css("background","white");
		//$("#tbody tr").children("td").css("background","skyblue");
		//alert("hi");
		//$("#tbody tr").css("background","white");
		
		//$("#tbody tr /*  td */").css("background", "white");
		//alert($(this)/* .children("td") */.css("background","skyblue").children(":first").text());
		//$(this).css("background","skyblue");
		/* alert($(this).children("td:first").text()); */
		
		//한줄로 쓰면? 'ㅅ' ㅋㅋㅋ 왔다 갔다! 
		/* alert($(this).parent().children().css("background","white").end().end()
		.css("background","deeppink").children(":first").text());
		 */
	 $("#tbody tr").css({"background":"white", "color":"black"});
		 var a =$(this).css({"background":"black", "color":"white"}).children(":first").text();
	         alert(a);
	
	});
	
});
</script>
</head>
<body>
<div id="cafe">
카페:
	<p>
		<span>커피프랜차이즈</span> 
		<a href="#">스타벅스</a>
		<a href="#">커피빈</a>
		<a href="#">커피베네</a>
		<a href="#">java카페</a>
	</p>	
</div>
<br>
<div>
	포탈 : 
	<a href="#">구글</a>
	<a href="#">다음</a>
	<a href="#">네이트</a>
	<a href="#">네이버</a>
</div>
<hr/>
<p id="descLayer">
	<span class="desc">설명 1</span><span></span><br>
	<span class="desc">설명 2</span><span></span><br>
	<span class="desc">설명 3</span><span></span><br>
	<span class="desc">설명 4</span><span></span><br>
</p>
<hr>

<table border='1' id="tb">
	<thead>
		<tr>
			<td>NO</td>
			<td>제목</td>
			<td>작성자</td>
			<td>조회수</td>
		</tr>
	</thead>
	<tbody id="tbody">
		<tr>
			<td>1</td>
			<td>1번글입니다.</td>
			<td>이영수</td>
			<td>20</td>
		</tr>
		<tr>
			<td>2</td>
			<td>2번글입니다.</td>
			<td>김유진</td>
			<td>50</td>
		</tr>
		<tr>
			<td>3</td>
			<td>3번글입니다</td>
			<td>정명길</td>
			<td>70</td>
		</tr>
		<tr>
			<td>4</td>
			<td>4번글입니다.</td>
			<td>유연주</td>
			<td>30</td>
		</tr>
		<tr>
			<td>5</td>
			<td>5번글입니다.</td>
			<td>오지영</td>
			<td>20</td>
		</tr>
	</tbody>
</table>
<hr>

</body>
</html>


