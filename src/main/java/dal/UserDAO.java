package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import exception.WrongPasswordException;
import model.User;

public class UserDAO extends DBContext {
	public User checkLogin(String username, String password) throws WrongPasswordException {

		User user = isExistUsername(username);

		if (user != null) {
			if (!user.getPassword().equals(password)) {

				throw new WrongPasswordException("wrong password");
			} else {

				return user;
			}
		}

		return null;
	}

	public User isExistUsername(String username) {
		try {
			String query = "SELECT * " + "FROM `cls`.`useraccount`\r\n" + "where username = ? ";
			PreparedStatement statement = connection.prepareStatement(query);
			statement.setString(1, username);

			ResultSet resultSet = statement.executeQuery();

			if (resultSet.next()) {

				int rsID = resultSet.getInt(1);
				String rsUsername = resultSet.getString(2);
				String rsPassword = resultSet.getString(3);
				String rsFullname = resultSet.getString(4);
				Date rsBirthDay = resultSet.getDate(5);
				String rsEmail = resultSet.getString(6);
				String rsPhonenumber = resultSet.getString(7);
				String rsAddress = resultSet.getString(8);
				String rsGender = resultSet.getString(9);
				Date rsTimeCreate = resultSet.getDate(10);

				User user = new User(rsID, rsUsername, rsPassword, rsFullname, rsBirthDay, rsEmail, rsPhonenumber,
						rsAddress, rsGender, rsTimeCreate);

				return user;
			}

		} catch (SQLException e) {
			// TODO: handle exception
		}

		return null;
	}
}
