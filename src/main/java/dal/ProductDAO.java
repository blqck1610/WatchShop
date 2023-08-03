package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
}
