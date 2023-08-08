package dal;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Cart;

import model.Product;

public class CartDAO extends DBContext {

	public Cart getCart(int userID)  {
		// TODO Auto-generated method stub
		try {
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			String sqlQuery = "SELECT * FROM cart where userID = ?";
			PreparedStatement statement = connection.prepareStatement(sqlQuery);
			statement.setInt(1, userID);
			ResultSet rs = statement.executeQuery();
			Cart cart;
			if (rs.next()) {

			} else {
				createNewCart(userID);
				rs = statement.executeQuery();
			}
			;
//			cart = new Cart(rs.getInt(1), rs.getInt(2), getCartItems(rs.getString(3)));
//			return cart;

		} catch (SQLException e) {
			// TODO: handle exception
		} finally {
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

	private Cart createNewCart(int userID)  {
		// TODO Auto-generated method stub
		String sqlQuery = "INSERT INTO `cls`.`cart`\r\n" + "(`userID`,\r\n" + "`items`)\r\n" + "VALUES\r\n" + "(?,?);";
		try {
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			PreparedStatement statement = connection.prepareStatement(sqlQuery);
			statement.setInt(1, userID);
			statement.setString(2, "");

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

		return null;
	}

//	private List<Item> getCartItems(String stringListItems) {
//
//		
//		if (stringListItems.equals("")) {
//			
//		}
//		String[] stringItems = stringListItems.split(",");
//		for (int indexStringItems = 0; indexStringItems < stringItems.length; indexStringItems++) {
//			String[] temp = stringItems[indexStringItems].split("-");
//
//			int productID = Integer.parseInt(temp[0]);
//			int quantity = Integer.parseInt(temp[1]);
//
//			ProductDAO produceDAO = new ProductDAO();
//			Product product = produceDAO.getProduct(productID);
//			double totalPrice = quantity * product.getPrice();
//
//			Item item = new Item(product, quantity, totalPrice);
//			listItems.add(item);
//
//		}
//
//		return listItems;
//	}

	public void addItem(String item, int userID)  {
		String sql = "select item from cart where id = ?";
		try {
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			PreparedStatement statement = connection.prepareStatement(sql);

			statement.setInt(1, userID);

			ResultSet rs = statement.executeQuery();
			String curItem = "";
			if (rs.next()) {
				curItem = rs.getString("item");
			}
			curItem += item + ',';
			sql = "UPDATE `cls`.`cart`\r\n" + "SET\r\n" + "`items` = ?,\r\n" + "WHERE  `userID` = ?;";
			statement = connection.prepareStatement(sql);
			statement.setString(1, curItem);
			statement.setInt(2, userID);
			int kq = statement.executeUpdate();
			System.out.println(kq);

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
