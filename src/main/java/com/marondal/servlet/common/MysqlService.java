package com.marondal.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	private static MysqlService mysqlService = null;
	private Connection connection;
	private Statement statement;
	
	
	//객체 관리 메소드
	//static을 붙히면 객체가 생성이되든안되는 사용할수있다. 싱글톤 방식을 배우기 위함.
	public static MysqlService getInstance()
	{
		if(mysqlService == null)
		{
		mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	
	// 데이터 베이스 접속
	public void connect()
	{
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			//서버 주소, 아이디, 비밀번호
			String url = "jdbc:mysql://localhost:3306/Day1";
			String id = "root";
			String password = "root";
			
			connection = DriverManager.getConnection(url, id, password);
			statement = connection.createStatement();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	//select 쿼리 수행
	public ResultSet select(String query)
	{
		ResultSet resultSet;
		try {
			resultSet = statement.executeQuery(query);
			return resultSet;
		} catch (SQLException e) {
			
			e.printStackTrace();
			return null;
		}
		
	}
	
	public int update(String query)
	//실행된 행의 개수
	{
		try {
			int count = statement.executeUpdate(query);
			return count;
		} catch (SQLException e) {
			
			e.printStackTrace();
			return -1;
		}
		
	}
	
	
	
	//데이터베이스 접속 해제
	public void disconnect()
	{
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		
	}
}
