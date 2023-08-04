package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet{
	
		public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
		{
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			
			if(!request.getParameter("address").startsWith("서울시"))
			{
				out.println("<html><head><title>배달 불가 지역</title></head><body>배달 불가 지역입니다</body></html>");
				return;
			}
			if(request.getParameter("card").equals("신한카드"))
			{
				out.println("<html><head><title>결제 불가</title></head><body>결제 불가 카드입니다</body></html>");
				return;
			}
			
			out.println("<html><head><title>결제정보</title></head><body>");
			out.println("<div><b>" + request.getParameter("address") + " 배달 준비중 " + "</b></div><hr>");
			out.println("<div>결제금액 : " + request.getParameter("price") + "원</div>");
			out.println("");
			
		}

}
