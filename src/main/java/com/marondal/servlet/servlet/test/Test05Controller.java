package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet{
		
		@Override
		public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
		{
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			
			int number = Integer.parseInt(request.getParameter("number"));
			
			out.println("<html><head><title>구구단</title></head><body><div><ul>");
			for(int i = 1; i <= 9; i++)
			{
				out.println("<li>" + number + " X " + i + " = " + number*i + "</li>");
			}
			out.println("</ul></div></body></html>");
			//아까 그냥 /servlet/test05 해버리면 parameter가 없는 상태여서 다운이된다. 그래서 /test05.html로 접속해주자
		}

}
