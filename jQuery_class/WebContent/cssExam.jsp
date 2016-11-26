<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- CSS 코드를 넣는 태그 -->
<style type="text/css">
/*CSS 주석*/
/*li{} 는 (li : selector) 스타일을 적용시킬 HTML 요소 선택자.*/
li{
		color:orange;
		font-weight:bold;
	}

/*class(여러 개 선택 시 사용!)가 basic인 애 -> . 으로 표시 (.은 클래스 속성을 지정할 때 쓴다.)
class: 여러 개의 요소에 같은 스타일을 적용하기 위한 속성 */
.basic{
		text-decoration:underline; /*밑줄*/
      }
/*#+id명 
  #soldout - id 속성의 값이 soldout인 태그
  id는 원래 하나의 요소에 스타일을 적용하기 위한 속성.
*/
#soldout
{
	text-decoration:line-through;
}
.food{
	color:green;
	font-weight:bold;
}
      
</style>

</head>

<body>
11월 9일<hr>
<br>
	<h1>[ M e n u ]</h1>
	<h2 class ="basic">-기본메뉴</h2>
	<ul><!-- 리스트 태그 -->
		<li><font color="red" ><b>짜장면</b></font></li>
		<li class="basic"><b>짬뽕</b></font></li>
		<li class="basic"><b>볶음밥</b></font></li>
	</ul> 

	<h2>-요리</h2>
	<ul>
		<li class="food">탕수육</li>
		<li class="food">양장피</li>
		<li class= "food" id="soldout">팔보채</li>
		<li>유산슬</li>
	</ul>

</body>
</html>