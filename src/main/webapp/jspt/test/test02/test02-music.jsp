<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>곡정보</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
	<%@ include file="music-data.jsp" %>
	<div id = "wrap">
		<form method="get" action="/jspt/test/test02/test02-music.jsp">
			<header class="d-flex align-items-center w-50">
				<div>
					<h3 class="text-success">Melong</h3>
				</div>
				
					<div class="input-group">
						<input type = "text" class = "form-control ml-5" name="searchTitle">
						<div class="input-group-append">
							<button type="submit" class="btn btn-primary">검색</button>
						</div>
					</div>
			</header>
		</form>
		<nav class="mainmenu">
		<ul class="nav">
			<li class="nav-item"><a href="#" class = "nav-link font-weight-bold text-dark">멜롱차트</a></li>
			<li class="nav-item"><a href="#" class = "nav-link font-weight-bold text-dark">최신음악</a></li>
			<li class="nav-item"><a href="#" class = "nav-link font-weight-bold text-dark">장르음악</a></li>
			<li class="nav-item"><a href="#" class = "nav-link font-weight-bold text-dark">멜롱DJ</a></li>
			<li class="nav-item"><a href="#" class = "nav-link font-weight-bold text-dark">뮤직어워드</a></li>
		</ul>
	</nav>
	<article class="d-flex border border-success">
		<% for(Map<String, Object> temp : musicList)  {
			String forcheck = null;
			if(request.getParameter("title") == null)
			{
				forcheck = request.getParameter("searchTitle"); 
			}
			else
			{
				forcheck = request.getParameter("title"); 
			}
			String forcheck2 = (String)temp.get("title");
			
			if(forcheck.equals(forcheck2)) {%>
		<div class="col-2 p-0">
			<img src = "<%= temp.get("thumbnail") %>" width = "100%" height = "200px" class = p-3>
		</div>
		<div class="col-10 p-0">
			<div class="p-3">
				<div class ="display-4"><%= temp.get("title")%></div>
				<div class="font-weight-bold text-success"><%= temp.get("singer")%></div>
				<div class="small text-secondary">
					<div>앨범 : <%= temp.get("album") %></div>
					<% int time = (Integer)temp.get("time"); int min = time/60; int sec = time%60;%>
					<div>재생시간 : <%= min %>:<%= sec %></div>
					<div>작곡가 : <%= temp.get("composer") %></div>
					<div>작사가 : <%= temp.get("lyricist") %></div>
				</div>
				
			</div>
		</div>
		<%} 
		
		} %>
	</article>
	<aside class="mt-3">
		<h4>가사</h4>
		<hr>
		<div>가사 정보 없음</div>
	</aside>
	<footer>
		<hr>
		<div class="small text-secondary">
		Copyright 2021. melong All Rights Reserved.
		</div>
	</footer>
	</div>
	




  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</body>
</html>