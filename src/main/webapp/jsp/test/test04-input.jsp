<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test04-input</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	
	<form method = "post" action = "/jsp/test/test04.jsp">
		<div class = "container">
			<h2>사칙 연산</h2>
			<div class = "d-flex">
				<input type = "text" name = "num1" style = "width:200px; height:30px" class ="form-control mr-2">
				<select style = "width:100px; height:30px" class = "form-control" name = "operator">
					<option>+</option>
					<option>-</option>
					<option>X</option>
					<option>/</option>
				</select>
				<input type = "text" name = "num2" style = "width:200px; height:30px" class = "form-control ml-2">
				<button type = "submit" style = "width:50px; height:30px" class = "btn btn-success ml-1 p-0">계산</button>
			</div>
		</div>
	</form>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 
</body>
</html>