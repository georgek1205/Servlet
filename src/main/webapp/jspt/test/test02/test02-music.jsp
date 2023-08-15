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
	<%
	// 아티스트 정보 

	    Map<String, Object> artistInfo = new HashMap<>();
	    artistInfo.put("name", "아이유");
	    artistInfo.put("debute", 2008);
	    artistInfo.put("agency", "EDAM엔터테인먼트");
	    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


	// 아이유 노래 리스트 
	    List<Map<String, Object>> musicList = new ArrayList<>();

	    Map<String, Object> musicInfo = new HashMap<>();
	    musicInfo.put("id", 1);
	    musicInfo.put("title", "팔레트");
	    musicInfo.put("album", "Palette");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "아이유");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 2);
	    musicInfo.put("title", "좋은날");
	    musicInfo.put("album", "Real");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
	    musicInfo.put("time", 233);
	    musicInfo.put("composer", "이민수");
	    musicInfo.put("lyricist", "김이나");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 3);
	    musicInfo.put("title", "밤편지");
	    musicInfo.put("album", "palette");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	    musicInfo.put("time", 253);
	    musicInfo.put("composer", "제휘,김희원");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 4);
	    musicInfo.put("title", "삐삐");
	    musicInfo.put("album", "삐삐");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "이종훈");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 5);
	    musicInfo.put("title", "스물셋");
	    musicInfo.put("album", "CHAT-SHIRE");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "아이유,이종훈,이채규");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 6);
	    musicInfo.put("title", "Blueming");
	    musicInfo.put("album", "Love poem");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "아이유,이종훈,이채규");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	%>
	<div id = "wrap">
		<header class="d-flex align-items-center w-50">
			<div>
				<h3 class="text-success">Melong</h3>
			</div>
			<form method="post" action="/jspt/test/test02/test02-music.jsp">
				<div class="input-group">
					<input type = "text" class = "form-control ml-5" name="searchTitle">
					<div class="input-group-append">
						<button type="submit" class="btn btn-primary">검색</button>
					</div>
				</div>
			</form>
		</header>
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
			int forcheck = Integer.parseInt(request.getParameter("id"));
			int forcheck2 = (Integer)temp.get("id");
			if(forcheck == forcheck2) {%>
		<div class="col-2 p-0">
			<img src = "<%= temp.get("thumbnail") %>" width = "100%" height = "200px" class = p-3>
		</div>
		<div class="col-10 p-0">
			<div class="p-3">
				<div class ="display-4"><%= temp.get("title")%></div>
				<div class="font-weight-bold text-success"><%= temp.get("singer")%></div>
				<div class="small text-secondary">
					<div>앨범 : <%= temp.get("album") %></div>
					<% String time = String.valueOf(temp.get("time")); %>
					<div>재생시간 : <%= time.substring(0, 1) %>:<%= time.substring(1) %></div>
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