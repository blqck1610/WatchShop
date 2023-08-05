package dal;

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
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, idProduct);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				return result.getInt(3);
			}

		} catch (SQLException e) {
			// TODO: handle exception
		}
		return 0;
	}

	// review
	public List<Review> getReviews(int idProduct) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM cls.review where productId = ?;";
		try {
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
		}

		return null;
	}

	public double getAvgScore(int idProduct) {
		String sql = "SELECT avg(rate) FROM cls.review where productId = ?;";
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, idProduct);
			ResultSet rs = statement.executeQuery();
			if (rs.next()) {
				return rs.getDouble(1);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return 0.0;
	}
}
