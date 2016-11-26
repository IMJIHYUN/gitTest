<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11월 9일</title>
<!-- jQuery 라이브러리 (jquery.js)를 등록하기! -->
<!-- url을 CDN 서버 사용!
웹 브라우저 캐시에 저장을 미리 해둠! 그래서 실행 시 안 받아와도 된다. 근데, 구글 쪽에 있는 url 타고 가서 
가져오면 'ㅅ'
jQuery 라이브러리(jquery.js)를 등록-src="jquery.js가 있는  url
 -->
<!-- <script type="text/javascript" src="/jQuery_class/jquery.js"> </script>-->
<!-- /* 여기에 코드를 써도 사라진다. .js 파일의 내용이 여기에 복붙되니까! */ -->

<script   src="/jQuery_class/jquery.js"  ></script>
<script type="text/javascript">
function selectorText()
{ 
	//$("div")-jquery 셀렉터 함수 : 문서내에 (DOM 트리 내에) 모든 "div"요소들을 조회해서 jQuery객체에 넣고 그 jQuery 객체를 리턴.
	//$("셀렉터").css("css속성","css값") : jQuery객체가 가지고 있는 요소들에 css style을 적용하는 메소드
	$("div").css("border","3px dotted grey"); //("div , p") - 둘 다!
	$("div ul li").css("color","white")//div의 자손 ul의 자손 li
	$("div>ul li").css("background","brown") //div의 자식인 ul의 자손인 li  자손: 하위에 있으면 자손! / 자식: 바로 밑에 있어야 자식

}
</script>

</head>
<body>
	<button onclick="selectorText();">셀렉터 테스트</button>
	<p>
	<div id="title">우리커피를 찾아 주셔서 감사합니다.</div>
	<!-- div안에 ul -->
	<div>
		커피 메뉴
		<ul>
			<li>아메리카노</li>
			<li>카페라떼</li>
			<li>카푸치노</li>
			<li>카라멜 모카</li>
			<li>카라멜 마키아토</li>
		</ul>
	</div>
	<br>
	<!-- <div>-<b>-<ul> -->
	<div>
		<p>비 커피 메뉴</p>
		<b>
			<ul>
				<li>녹차</li>
				<li>홍차</li>
				<li>우롱차</li>
				<li>국화차</li>
			</ul>
		</b>
	</div>
	<p id="desc">tel : 02-111-2222, 주소 : 서울</p>
	<hr>
	<p>
		<a href="/mainController">우리커피 홈</a> 
		<a href="http://www.coffeebeankorea.com">커피빈</a> 
		<a href="http://www.istarbucks.co.kr">스타벅스</a> 
		<a href="http://www.caffebene.co.kr/">카페베네</a>
	</p>
</body>
</html>