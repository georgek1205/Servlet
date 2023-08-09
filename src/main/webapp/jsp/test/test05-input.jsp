<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test05 input</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
	<div class = "container">
		<form method = "post" action = "/jsp/test/test05.jsp">
			<h2>길이 변환</h2>
			<input type ="text" class = "form-contrl w-25" name = "centimeter"><label class = "ml-2">cm</label>
			<div>
				<label>인치</label><input type = "checkbox" name = "data" value = "inch" class = "mr-2">
				<label>야드</label><input type = "checkbox" name = "data" value = "yard" class = "mr-2">
				<label>피트</label><input type = "checkbox" name = "data" value = "feet" class = "mr-2">
				<label>미터</label><input type = "checkbox" name = "data" value = "meter" class = "mr-2">
			</div>
			<button type = "submit" class = "btn btn-success">변환</button>
			
		</form>
		
	</div>

   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 
</body>
</html>