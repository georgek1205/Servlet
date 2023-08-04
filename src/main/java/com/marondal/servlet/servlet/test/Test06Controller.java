package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet{
		
	
		@Override
		public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
		{
			response.setCharacterEncoding("utf-8");
			response.setContentType("application/json");
			PrintWriter out = response.getWriter();
			
			int num1 = Integer.parseInt(request.getParameter("num1"));
			int num2 = Integer.parseInt(request.getParameter("num2"));
			
			out.println("{\n\"addition\" : " + (num1+num2) + ",\n" + "\"subtraction\" : " + (num1-num2) + ",\n" + "\"multiplication\" : " + (num1*num2) + ",\n" + "\"division\" : " + (num1/num2) + "\n" + "}");
		}
		

}
