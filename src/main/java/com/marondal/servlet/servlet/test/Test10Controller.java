package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet{
	
		// doPost 메소드 바깥쪽에 위치
		private final Map<String, String> userMap =  new HashMap<String, String>() {
		    {
		        put("id", "hagulu");
		        put("password", "asdf");
		        put("name", "김인규");
		    }
		};
		
		public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
		{
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			
			out.println("<html><head><title>로그인정보</title></head><body>");
			if(!userMap.get("id").equals(request.getParameter("id")))
			{
				out.println("id가 일치하지 않습니다.</body></html>");
				return;
			}
			if(!userMap.get("password").equals(request.getParameter("password")))
			{
				out.println("비밀번호가 일치하지 않습니다.</body></html>");
				return;
			}
			
			out.println("<h2>" + userMap.get("name") + "님 환영합니다.</h2></body></html>");
			
			
		}

}
