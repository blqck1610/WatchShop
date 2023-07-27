package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;
import model.User;

import java.io.IOException;

import dal.CartDAO;
import dal.UserDAO;
import exception.WrongPasswordException;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		System.out.println("call login");
		String loginError = "";
		try {
		
			UserDAO userDAO = new UserDAO();
			
			User user = userDAO.checkLogin(username, password);
			if (user == null) {
				loginError = "account doesnt exist!";
				System.out.println(loginError);
				request.setAttribute("userError", loginError);
			} else {
				
				CartDAO cartDAO = new CartDAO();
				Cart cart = cartDAO.getCart(user.getUserID());
				

				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				session.setAttribute("cart", cart);
				System.out.println("login susccess");

			}
		
		} catch (WrongPasswordException e) {
			
			loginError = "Wrong password";
			System.out.println(loginError);
			request.setAttribute("userError", loginError);

		}
		finally {
			request.getRequestDispatcher("index.jsp").forward(request, response);

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
