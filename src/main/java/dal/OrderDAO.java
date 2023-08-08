package dal;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import model.Cart;
import model.Order;
import model.OrderDetail;
import model.Product;

public class OrderDAO extends DBContext {

	public boolean doneAddOrder(Cart cart, int userId) {
		try {
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			connection.setAutoCommit(false);

			String sql = "INSERT INTO `cls`.`order`\r\n" + "(`userID`,\r\n" + "`totalmoney`)\r\n" + "VALUES\r\n"
					+ "(?,?);";

			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, userId);
			statement.setDouble(2, cart.getTotalPrice());
			statement.executeUpdate();
			sql = "SELECT * FROM cls.order where userID = ? order by id desc limit 1";
			statement = connection.prepareStatement(sql);
			statement.setInt(1, userId);
			int orderID;
			ResultSet rs = statement.executeQuery();
			if (rs.next()) {
				orderID = rs.getInt(1);
				Set<Product> keySet = cart.getItems().keySet();
				for (Product key : keySet) {
					sql = " INSERT INTO `cls`.`orderdetail`(`orderID`,`productID`,`quantity`,`price`) VALUES( ?,?,?,?)";
					statement = connection.prepareStatement(sql);
					statement.setInt(1, orderID);
					statement.setInt(2, key.getIdProduct());
					statement.setInt(3, cart.getItems().get(key));
					statement.setDouble(4, key.getPrice() - key.getPrice() * key.getSaleValue() / 100);
					statement.executeUpdate();
				}
				connection.commit();
				return true;

			} else {
				connection.rollback();
				return false;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			try {
				connection.rollback();
				return false;
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
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
		return false;
	}

	public List<OrderDetail> getOrderDetails(int orderID ) {
		String sql = "SELECT * FROM cls.orderdetail where orderID = ?;";
		try {
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, orderID);
			ResultSet rs = statement.executeQuery();
			List<OrderDetail> orderDetails = new ArrayList<OrderDetail>();
			while(rs.next()) {
				Product product = (new ProductDAO()).getProduct(rs.getInt(2));
				OrderDetail orderDetail = new OrderDetail(product, rs.getInt(3), rs.getDouble(4), rs.getString(5), rs.getInt(6));
				orderDetails.add(orderDetail);
			}
			return orderDetails;
			
			
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

	public List<Order> getOrders(int userId) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM cls.order where userID = ? order by date desc;";
		try {
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, userId);
			ResultSet rs = statement.executeQuery();
			List<Order> orders = new ArrayList<Order>();
			while(rs.next()) {
				Order order = new Order();
				order.setId(rs.getInt(1));
				order.setDate(rs.getDate(2));
				order.setUserID(3);
				order.setTotalMoney(rs.getDouble(4));
				order.setOrderDetails(getOrderDetails(rs.getInt(1)));
				orders.add(order);
			}
			return orders;
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
	
	public void setReviewPer(int orderId, int idProduct, int reviewPer) {
		String sql = "UPDATE `cls`.`orderdetail`\r\n"
				+ "SET\r\n"
				+ "reviewper = ?\r\n"
				+ "WHERE `orderID` = ? AND `productID` = ?;";
		try {
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, reviewPer);
			statement.setInt(2, orderId);
			statement.setInt(3, idProduct);
			statement.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void setStatus(int orderId, int idProduct) {
		String sql = "UPDATE `cls`.`orderdetail`\r\n"
				+ "SET\r\n"
				+ "status = ?\r\n"
				+ "WHERE `orderID` = ? AND `productID` = ?;";
		try {
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, "Đã giao");
			statement.setInt(2, orderId);
			statement.setInt(3, idProduct);
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

	public List<Order> getAllOrders() {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM cls.order order by date desc;";
		try {
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			PreparedStatement statement = connection.prepareStatement(sql);
			
			ResultSet rs = statement.executeQuery();
			List<Order> orders = new ArrayList<Order>();
			while(rs.next()) {
				Order order = new Order();
				order.setId(rs.getInt(1));
				order.setDate(rs.getDate(2));
				order.setUserID(rs.getInt(3));
				order.setTotalMoney(rs.getDouble(4));
				order.setOrderDetails(getOrderDetails(rs.getInt(1)));
				orders.add(order);
			}
			return orders;
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

	public void editStatus(String status, int orderId, int idProduct) {
		// TODO Auto-generated method stub
		String sql = "UPDATE `cls`.`orderdetail`\r\n"
				+ "SET\r\n"
				+ "\r\n"
				+ "`status` = ? \r\n"
				+ "\r\n"
				+ "WHERE `orderID` = ? AND `productID` = ? ;";
		try {
			connection = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, status);
			statement.setInt(2, orderId);
			statement.setInt(3, idProduct);
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
