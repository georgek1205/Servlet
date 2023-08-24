package com.marondal.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;

@WebServlet("/db/ex01")
public class Ex01Controller extends HttpServlet{
		
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String selectQuery = "SELECT*FROM `used_goods`;";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		out.println("<html><head><title>중고물품</title></head><body>");
		
		try {
			while(resultSet.next())
			{
				String title = resultSet.getString("title");
				int price = resultSet.getInt("price");
				
				out.println("<div>제목 : " + title + "가격 : " + price + "</div>");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.println("</body></html>");
		
		String insertQuery = "INSERT INTO `used_goods`\n"
				+ "(`sellerId`, `title`, `price`, `description`)\n"
				+ "VALUE\n"
				+ "(4, '강아지 인형 팝니다', 5000, '저희 강아지가 안놀아서 팔아요');";
		int count = mysqlService.update(insertQuery);
		out.println("<div>삽입 결과 :  " + count + "</div>");
		
		mysqlService.disconnect();
		
//		try {
//			// 데이터 베이스 접속
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			//서버 주소, 아이디, 비밀번호
//			String url = "jdbc:mysql://localhost:3306/Day1";
//			String id = "root";
//			String password = "root";
//			
//			Connection connection = DriverManager.getConnection(url, id, password);
//			Statement statement = connection.createStatement();
//			
//			String selectQuery = "SELECT*FROM `used_goods`;";
//			ResultSet resultSet = statement.executeQuery(selectQuery);
//			
//			out.println("<html><head><title>중고물품</title></head><body>");
//			
//			while(resultSet.next())
//			{
//				String title = resultSet.getString("title");
//				int price = resultSet.getInt("price");
//				
//				out.println("<div>제목 : " + title + "가격 : " + price + "</div>");
//				
//			}
//			
//			out.println("</body></html>");
//		} catch (SQLException e) {
//			
//			e.printStackTrace();
//		}
		
	}
}
