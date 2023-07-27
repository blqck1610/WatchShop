package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Cart;
import model.Item;
import model.Product;

public class CartDAO extends DBContext {

	public Cart getCart(int userID) {
		// TODO Auto-generated method stub
		try {
			String sqlQuery = "SELECT * FROM cart where userID = ?";
			PreparedStatement statement = connection.prepareStatement(sqlQuery);
			statement.setInt(1, userID);
			ResultSet rs = statement.executeQuery();
			Cart cart;
			if (rs.next()) {
				 
			}
			else {
				 createNewCart(userID);
				 rs = statement.executeQuery();
			};
			cart = new Cart(rs.getInt(1), rs.getInt(2), getCartItems(rs.getString(3)));
			return cart;

		} catch (SQLException e) {
			// TODO: handle exception
		}

		return null;
	}

	private Cart createNewCart(int userID) {
		// TODO Auto-generated method stub
		String sqlQuery	= "INSERT INTO `cls`.`cart`\r\n"
				+ "(`userID`,\r\n"
				+ "`items`)\r\n"
				+ "VALUES\r\n"
				+ "(?,?);";
		try {
			PreparedStatement statement = connection.prepareStatement(sqlQuery);
			statement.setInt(1, userID);
			statement.setString(2, "");
			
			statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return null;
	}

	private List<Item> getCartItems(String stringListItems) {
		// TODO Auto-generated method stub
		List<Item> listItems = new ArrayList<>();
		String[] stringItems = stringListItems.split(",");
		for(int indexStringItems = 0; indexStringItems < stringItems.length; indexStringItems++) {
			String[] temp = stringItems[indexStringItems].split("-");
			
			int productID = Integer.parseInt(temp[0]);
			int quantity = Integer.parseInt(temp[1]);
			
			ProduceDAO produceDAO = new ProduceDAO();
			Product product = produceDAO.getProduct(productID);
			double totalPrice  = quantity * product.getPrice();
			
			Item item = new Item(product, quantity, totalPrice);
			
		}
		
		return null;
	}

}
