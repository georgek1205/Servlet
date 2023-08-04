package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.println("<html><head><title>지원서</title><head><body>");
		out.println("<h2><b>" + request.getParameter("name") + "님 지원이 완료되었습니다." + "</b></h2><hr>");
		out.println("<div>지원내용\n" + request.getParameter("contents"));
		out.println("</div></body></html>");
		
	}

}
