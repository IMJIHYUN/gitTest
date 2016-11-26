<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
form{
	font-size: x-large;
}
form * {
	margin: 15px;
}
</style>
<script type="text/javascript" src="/jQuery_class/scripts/jquery.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
<form id="form">
	input type='text' : <input type="text" name="TEXT"><br>
	
	<input type="hidden" name="hidden" value="HIDDEN VALUE"> 
	input type="checkbox" : <input type="checkbox" name="CHECKBOX" value="true"><br>
	input type="radio" <input type="radio" name="RADIO" value="radio"><br>        
	select : 
	<select name="SELECT">
		<option>선택하세요</option>
		<option value="1">일번</option>
		<option value="2">이번</option>
		<option value="3">삼번</option>
	</select><br />     
	
	<input type="submit" value="전송버튼">
	<input type="button" value="버튼-ajax요청" id="btn">
</form>
</body>
</html>