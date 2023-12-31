package dal;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {
	protected static String DB_NAME = "cls";
	protected static String DB_URL = "jdbc:mysql://localhost:3306/" + DB_NAME;
	protected static String USER_NAME = "root";
	protected static String PASSWORD = "nguyen00";
	
	protected Connection connection;


	/**
	 * @param dbURL:    database's url
	 * @param userName: username is used to login
	 * @param password: password is used to login
	 */
	public DBContext() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			
		} catch (Exception ex) {
			System.out.println("connect failure!");
			ex.printStackTrace();
		}
		
	}
	
}
