<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/jQuery_class/scripts/jquery.js"></script>
<script type="text/javascript">
/*
 * 특정 DOM 노드 객체(들)을 동적으로 나타나게/사라지게 처리하는 jQuery 메소드 
 	총 3가지  - 애니메이션의 차이.
 	1.(1.show():보여줌/2.hide():안 보여줌 /3.toggle():반대상태로 )
	2.(1.fadeIn()/2.fadeOut()/3.fadeToggle())
	3.(1.slideDown()/2.slideUp()/3.slideToggle())
	매개변수 (생략가능)
	1번 매개변수 - 정수 : 밀리초(1/1000초) - 나타나거나 사라질 때 걸리는 시간 설정.
	2번 매개변수 - 함수 - 나타나거나 사라지는 작업이 완료된 후 호출될 callback()함수
*/
$(document).ready(function(){
	//hideBtn에 ㄱㄱ - 사진을 진짜 없애려면 dom tree에서 빼야한다.
	$("#hideBtn").on("click",function(){
		
		//$("#image").hide(1000);//사라지게만 함 (안 줘도 되지만, 시간을 1초 준 것! 애니매이션 효과가 생겼음)
		$("#image").fadeOut(1000);
		//$("#image").slideDown(1000);
	});
	
	$("#showBtn").on("click",function(){
		/* $("#image").show(1000,function(){
			alert("show()");
		}); */ //나오게만 함
		//$("#image").fadeIn(1000);
		$("#image").slideUp(5000);
	});
	
	$("#toggleBtn").on("click",function(){ //show와 hide를 합친 것!
		/* $("#image").toggle(1000); */
		//$("#image").fadeToggle(1000);
		$("#image").slideToggle(5000);
	});
});

</script>
</head>
<body>
<h2>배경사진</h2>
<input type="button" id="hideBtn" value="Image 감추기">
<input type="button" id="showBtn" value="Image 보기">
<input type="button" id="toggleBtn" value="Image 토글"><p>

<img id="image" src="image.jpg"><!-- src="그림의 url"  같은 경로에 있다! image.jpg 상대경로로 한 것 -->

</body>
</html>