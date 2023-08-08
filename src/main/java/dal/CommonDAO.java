package dal;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Review;

public class CommonDAO extends DBContext {
	// sale off
	public int getSaleValue(int idProduct) {
		// TODO Auto-generated method stub

		String sql = "SELECT * FROM cls.saledetails where idproduct = ?;";
		try {
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, idProduct);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				return result.getInt(3);
			}

		} catch (SQLException e) {
			// TODO: handle exception
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
		return 0;
	}

	// review
	public List<Review> getReviews(int idProduct) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM cls.review where productId = ?;";
		try {
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, idProduct);
			ResultSet rs = statement.executeQuery();
			List<Review> reviews = new ArrayList<Review>();
			while (rs.next()) {
				Review review = new Review(rs.getInt("productId"), rs.getInt("userID"), rs.getInt("rate"),
						rs.getString("author"), rs.getString("comment"), rs.getDate("time"), rs.getString("title"));
				reviews.add(review);
			}
			return reviews;

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

	public double getAvgScore(int idProduct) {
		String sql = "SELECT avg(rate) FROM cls.review where productId = ?;";
		try {
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, idProduct);
			ResultSet rs = statement.executeQuery();
			if (rs.next()) {
				return rs.getDouble(1);
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

		return 0.0;
	}

	public void addReview(int idProduct, int userID, int rating, String name, String review, String title) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO `cls`.`review`\r\n"
				+ "(`productId`,\r\n"
				+ "`userID`,\r\n"
				+ "`rate`,\r\n"
				+ "`author`,\r\n"
				+ "`comment`,\r\n"
				+ "`title`)\r\n"
				+ "VALUES\r\n"
				+ "(?,\r\n"
				+ "?,\r\n"
				+ "?,\r\n"
				+ "?,\r\n"
				+ "?,\r\n"
				+ "?);";
		try {
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, idProduct);
			statement.setInt(2, userID);
			statement.setInt(3, rating);
			statement.setString(4, name);
			statement.setString(5, review);
			statement.setString(6, title);
			statement.executeUpdate();
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
	}
}
