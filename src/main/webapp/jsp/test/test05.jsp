<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test05</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
	<div class = "container">
		<%
		String[] temp_datas = request.getParameterValues("data");
		int centimeter = Integer.parseInt(request.getParameter("centimeter"));
		for(int i = 0; i < temp_datas.length; i++)
		{
			if(temp_datas[i].equals("inch"))
			{
				temp_datas[i] = centimeter/2.54 + " in";
			}
			
			else if(temp_datas[i].equals("yard"))
			{
				temp_datas[i] = centimeter/91.4399 + " yd";
			}
			
			else if(temp_datas[i].equals("feet"))
			{
				temp_datas[i] = centimeter/30.479 + " ft";
			}
			
			else if(temp_datas[i].equals("meter"))
			{
				temp_datas[i] = centimeter/100.0 + " m";
			}
		}
		
		/* String print_data = "";
		for(int i = 0; i < temp_datas.length; i++)
		{
			print_data += temp_datas[i] + "<br>";
		} */
		//html 관점으로생각하자
		String print_data = String.join("<br>", temp_datas);
		%>
		
		<h2>
		변환 결과<br>
		<%= request.getParameter("centimeter") %>cm
		<hr>
		<%=  print_data %>
		</h2>
	</div>


   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 
</body>
</html>