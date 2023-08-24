package com.marondal.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;


@WebServlet("/db/bookmark/delete")
public class BookmarkdeleteController extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String name = request.getParameter("name");
		
		
		String insert = "DELETE FROM `bookmark` WHERE name='" + name + "';";
		
		int count = mysqlService.update(insert);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/database/bookmark-list.jsp");
	}
}
