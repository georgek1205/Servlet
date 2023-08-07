<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP practice1</title>
</head>
<body>
	
	<h3>문제1</h3>
	<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for(int i : scores)
	{
		sum += i;
	}
	double avg = sum / (double)scores.length;
	%>
	<h3>평균 : <%= avg %></h3>
	
	<h3>문제2</h3>
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;
	for(String i : scoreList)
	{
		if(i.equals("O"))
		{
			score += 10;
		}
	}
	%>
	<h3>시험점수 : <%= score %></h3>
	
	<h3>문제3</h3>
	
	<%!
		
		public int getSum(int n)
		{
			int total = 0;
			for(int i = 1; i <= n; i++)
			{
				total += i;
			}
			return total;
		}
	%>
	<h3>1부터 N까지 합 : <%= getSum(50) %></h3>
	
	<h3>문제4</h3>
	<%
	String birthDay = "20010820";
	int age = 2023 - Integer.parseInt(birthDay.substring(0,4)) - 1;
	%>
	
	<h3><%= birthDay %>의 나이는 <%= age %> 살 입니다</h3>
	
</body>
</html>