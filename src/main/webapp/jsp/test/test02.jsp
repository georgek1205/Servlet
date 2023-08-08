<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test02</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<%
		double weight = Double.parseDouble(request.getParameter("weight"));
		double height = Double.parseDouble(request.getParameter("height"));
		double bmi = weight / ((height / 100.0) * (height / 100.0));
	
		String bmi_string = null;
		
		if(bmi <= 20)
		{
			bmi_string = " 저체중 ";
		}
		else if(bmi >= 21 && bmi <= 25)
		{
			bmi_string = " 정상 ";
		}
		else if(bmi >= 26 && bmi <= 30)
		{
			bmi_string = " 과체중 ";
		}
		else if(bmi >= 31)
		{
			bmi_string = " 비만 ";
		}
	%>

	<h2>BMI 측정 결과</h2>
	<div class = "display-4 d-flex">
		<div>당신은</div><div class = "text-primary"><%= bmi_string %></div><div> 입니다</div>
	</div>
	<div>BMI 수치 : <%= bmi %></div>
	
	
	
     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>