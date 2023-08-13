<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 현재 시간 </h1>
	
	<%-- 정적 --%>
	<%-- <%@ include file = "date.jsp" %> --%>
	<%-- dateString같은 date.jsp에있는 변수를 바로 가져다 쓸수있다. 왜냐면, 정적은 그냥 코드가 바로 붙어버린다고 생각하자 --%>
	
	
	<%-- 동적 --%>
	<jsp:include page = "date.jsp"/>
	<%-- 동적은 결과만 포함 --%>
	
</body>
</html>