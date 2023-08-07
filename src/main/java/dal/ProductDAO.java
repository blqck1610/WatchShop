package dal;

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
		}

		return null;
	}

	public List<Product> getProducts(String req, int limit) {

		String sql = "SELECT * FROM cls.product \r\n" + "order by ? limit ? ;";
		try {

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
		}

		return null;
	}

	public List<Product> getProductsByGender(String req, int limit) {


		String sql = "SELECT * FROM cls.product \r\n" + "where gender =  ? limit ? ;";
		try {

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
	
	public List<Product> getProducts(String query) {

		String sql = "SELECT * FROM cls.product where 1 = 1 and ( brand like '%?%' or price like '%?%' or productName like '%?%';";
		try {

			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, query);
			statement.setString(2, query);
			statement.setString(3, query);
			
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
		}

		return null;
	}
}
