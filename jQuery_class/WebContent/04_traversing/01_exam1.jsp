<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
	div { 
		width:60px; height:40px; margin:10px;
        border:5px solid pink  ; 
	}
	.lightblue { 
		background:lightblue; color:white;
	}
</style>
<script type="text/javascript" src="/jQuery_class/scripts/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("div,p").css("color","coral")
	.filter("div").css("background","purple").end()
	.filter(".han").on("click",function(){
		
		alert($(this).text());
	});
	
});
</script>
</head>

 <body>
   <div>1번</div>
   <div>2번</div>
   <div>3번</div>
   <div>4번</div>
   <div>5번</div>
   <div>6번</div>
   
   <hr>
   <div class="han" >가</div>
   <div class="han">나</div>
   <div class="han">다</div>
   <p class="han">라</p><!--  p라서 칸 없음 -->
   
   
 </body>
</html>
