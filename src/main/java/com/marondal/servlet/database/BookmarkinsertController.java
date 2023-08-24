package com.marondal.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;


@WebServlet("/db/bookmark/input")
public class BookmarkinsertController extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		
		String insert = "INSERT INTO `bookmark`\n"
				+ "(`name`, `url`)\n"
				+ "VALUE\n"
				+ "('" + name + "','"+ url + "');";
		
		mysqlService.update(insert);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/database/bookmark-list.jsp");
	}
}
