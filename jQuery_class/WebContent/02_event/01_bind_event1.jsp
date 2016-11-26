<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/jQuery_class/jquery.js"></script>
<script type="text/javascript">
//여기서 document는 window.document다!.ㅎㅎ
$(document).ready(function(){
	$("#chk").on("click",function(){
		//callback함수에서 this->이벤트소스객체
		//		this//checkbox 이거! 피피티 27쪽!! 이 객체다! 
		//alert(this.checked); //this - checkbox 객체! this.css()는 불가능! 지금 this는 체크박스니까@
		//$(this) //이건 체크박스 객체를 j쿼리에 넣으라는 거!! 
		if(this.checked)
			{
			alert("메일 수신을 받습니다."); //jquery랑 javascript 둘다 혼용해서 사용가능
			}
		else
			{
			alert("메일 수신을 안 받습니다.");
			}
	});
	
	//11월 10일 목요일!
	//어제와 달리! 여기 jQuery객체에 있는 애들을 빼내는 것! 
	$("#btn").on("click",function(){//this는 여기서는 이벤트가 발생하는 버튼이된다! 근데 내가 원하는 건 체크박스니까!
		 //$("#chk").checked 는 jQuery가 가진 속성이 아니라 checked 못 쓰고, val() <-이건 jQuery 객체가 지원하는 매서드! 그래서 ㅠㅠ 안 되었던거임
		//$("selector").prop("태그속성명") ->태그 속성의 내용 = '값'을 리턴한다.
		//$("selector").prop("태그속성명","속성값")->태그의 속성 값을 변경할 수 있다.
		//alert($("#chk").prop("checked"));
		//jQeury 객체 내에 있는 DOM 노드 객체를 조회 - jQuery 객체. get(index)-index : 0부터 시작! || jQuery객체[index]-index : 0부터 시작
		alert($("#chk").get(0).checked);//리스트처럼 사용?
		alert($("#chk")[0].checked); //배열처럼 사용
		
		/* {//prop()
			alert("체크박스가  체크 되어있습니다요~~~");
		}else
		{
			alert("체크박스가 체크 안 되어있습니다요~~~");
		} */
	});
	$("a").on("click",function(){ //진짜 이동할꺼니~?
			//alert("이동?"); //a 태그는 이미  이벤트 핸들러를 가지고 있다. 그래서 이동? ok -> 링크타고 이동한다. 그래서 이동 안 한다고 하면 안 해야되는 부분을 구현하면!
	 return confirm("정말 이동할까요?"); // true or false를 리턴해서 이벤트가 발생한 부분 밑에 input 부분 으로 보내준다. 
	});
	
	
	
	//선택된 li를 어떻게 표현할지 모르겠 -> this! 아~ 해당 이벤트가 발생한 곳! 거기! 콕! 거기 아아 ㅇㅇ
	//마우스가 올라갔을 때!
	/* $("li").on("mouseover",function(){//this를 사용
		$(this).css("text-decoration","underline");
		
	}); */
	
	//마우스가 내려갔을 때!
	/* $("li").on("mouseout",function(){
		$(this).css("text-decoration","none");
	}); */
	
	//hover=mouseover+ mouseout
	$("li").hover(function(){
		$(this).css("color","red");
	}, function(){
		$(this).css("color","black");
	});
	
	
}); 


</script>
</head>
<body>
메일 수신여부 : <input type="checkbox" name="mailing" value="true" id="chk" checked="checked">
<br>
<input type="button" value="click" id="btn">
<p>
	<a href="http://www.google.com">구글</a> <a href="http://www.daum.net">다음</a>
</p>
<ul>
	<li>우유</li>
	<li>빵</li>
	<li>두유</li>
	<li>쿠키</li>
	<li>탄산음료</li>
</ul>
</body>
</html>