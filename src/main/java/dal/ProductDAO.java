package dal;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Product;

public class ProductDAO extends DBContext {
	public Product getProduct(int id) {
		String sqlQurery = "SELECT * FROM product where idProduct = ?";

		try {
			PreparedStatement statement = connection.prepareStatement(sqlQurery);
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			statement.setInt(1, id);
			ResultSet resultSet = statement.executeQuery();
			if (resultSet.next()) {
				Product product = new Product(resultSet.getInt(1), resultSet.getString(2), resultSet.getDouble(3),
						resultSet.getInt(4), resultSet.getInt(5), resultSet.getString(6), resultSet.getString(7),
						resultSet.getString(8), resultSet.getString(9), resultSet.getString(10),
						resultSet.getString(11), resultSet.getString(12), resultSet.getString(13),
						resultSet.getString(14), resultSet.getString(15), resultSet.getDouble(16),
						resultSet.getString(17), resultSet.getString(18), resultSet.getString(19),
						resultSet.getString(20), resultSet.getString(21), resultSet.getString(22),
						resultSet.getString(23));
				return product;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			/*
			 * This block should be added to your code You need to release the resources
			 * like connections
			 */
			if (connection != null)
				try {
					connection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}

		return null;
	}

	public List<Product> getProducts(String req, int limit) {

		String sql = "SELECT * FROM cls.product \r\n" + "order by ? limit ? ;";
		try {
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, req);
			statement.setInt(2, limit);
			ResultSet resultSet = statement.executeQuery();
			List<Product> products = new ArrayList<>();

			while (resultSet.next()) {
				Product product = new Product(resultSet.getInt(1), resultSet.getString(2), resultSet.getDouble(3),
						resultSet.getInt(4), resultSet.getInt(5), resultSet.getString(6), resultSet.getString(7),
						resultSet.getString(8), resultSet.getString(9), resultSet.getString(10),
						resultSet.getString(11), resultSet.getString(12), resultSet.getString(13),
						resultSet.getString(14), resultSet.getString(15), resultSet.getDouble(16),
						resultSet.getString(17), resultSet.getString(18), resultSet.getString(19),
						resultSet.getString(20), resultSet.getString(21), resultSet.getString(22),
						resultSet.getString(23));
				products.add(product);

			}
			return products;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			/*
			 * This block should be added to your code You need to release the resources
			 * like connections
			 */
			if (connection != null)
				try {
					connection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}

		return null;
	}

	public List<Product> getProductsByGender(String req, int limit) {


		String sql = "SELECT * FROM cls.product \r\n" + "where gender =  ? limit ? ;";
		try {
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, req);
			statement.setInt(2, limit);
			ResultSet resultSet = statement.executeQuery();
			List<Product> products = new ArrayList<>();

			while (resultSet.next()) {
				Product product = new Product(resultSet.getInt(1), resultSet.getString(2), resultSet.getDouble(3),
						resultSet.getInt(4), resultSet.getInt(5), resultSet.getString(6), resultSet.getString(7),
						resultSet.getString(8), resultSet.getString(9), resultSet.getString(10),
						resultSet.getString(11), resultSet.getString(12), resultSet.getString(13),
						resultSet.getString(14), resultSet.getString(15), resultSet.getDouble(16),
						resultSet.getString(17), resultSet.getString(18), resultSet.getString(19),
						resultSet.getString(20), resultSet.getString(21), resultSet.getString(22),
						resultSet.getString(23));
				products.add(product);
			}
			return products;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			/*
			 * This block should be added to your code You need to release the resources
			 * like connections
			 */
			if (connection != null)
				try {
					connection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}

		return null;
	}
	public List<Product> productsInPage(List<Product> list, int start, int end) {
		List<Product> resultList = new ArrayList<>();
		for(int index = start; index < end; index ++) {
			resultList.add(list.get(index));
		}
		
		
		return resultList;
	}
	
	public List<Product> getProductsBySearch(String search, int limit) {

		String sql = "SELECT * FROM cls.product where 1 = 1 and ( brand like ? or price like ? or productName like ? )  LIMIT ?  ";
		try {
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			search = "%"+search+"%";
			PreparedStatement statement = connection.prepareStatement(sql);
			
			statement.setString(1, search);
			
			statement.setString(2, search);
			
			statement.setString(3, search);
			
			statement.setInt(4, limit);
			
			
			ResultSet resultSet = statement.executeQuery();
			List<Product> products = new ArrayList<>();

			while (resultSet.next()) {
				Product product = new Product(resultSet.getInt(1), resultSet.getString(2), resultSet.getDouble(3),
						resultSet.getInt(4), resultSet.getInt(5), resultSet.getString(6), resultSet.getString(7),
						resultSet.getString(8), resultSet.getString(9), resultSet.getString(10),
						resultSet.getString(11), resultSet.getString(12), resultSet.getString(13),
						resultSet.getString(14), resultSet.getString(15), resultSet.getDouble(16),
						resultSet.getString(17), resultSet.getString(18), resultSet.getString(19),
						resultSet.getString(20), resultSet.getString(21), resultSet.getString(22),
						resultSet.getString(23));
				products.add(product);
			}
			return products;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			/*
			 * This block should be added to your code You need to release the resources
			 * like connections
			 */
			if (connection != null)
				try {
					connection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}

		return new ArrayList<>();
	}

	
	
}
