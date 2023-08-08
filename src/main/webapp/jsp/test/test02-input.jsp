<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체격 조건 입력</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<h2>체격 조건 입력</h2>
	<form method = "get" action = "/jsp/test/test02.jsp">
		<div class = "form-group row m-0">
			<div class="col-xs-2">
				<input type = "text" name = "height"><label>cm</label>
			</div>
			<div class="col-xs-2 pr-3">
				<input type = "text" name = "weight"><label>kg</label>
			</div>
			<button type = "submit" class = "btn btn-primary">계산</button>
		</div>
		
	</form>
</body>
</html>