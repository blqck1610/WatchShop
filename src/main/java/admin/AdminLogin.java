package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

import java.io.IOException;

import dal.UserDAO;
import exception.WrongPasswordException;

/**
 * Servlet implementation class AdminLogin
 */
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		
		String loginError = "";
		try {
		
			UserDAO userDAO = new UserDAO();
			
			User user = userDAO.checkLogin(username, password);
			if (user == null) {
				loginError = "account doesnt exist!";
				
				request.setAttribute("userError", loginError);
			} else {
				
				
				

				HttpSession session = request.getSession();
				session.setAttribute("admin", user);
				
				session.setMaxInactiveInterval(60*100);
				response.sendRedirect("../admin");

			}
		
		} catch (WrongPasswordException e) {
			
			loginError = "Wrong password";
			
			request.setAttribute("userError", loginError);
			request.getRequestDispatcher("index.jsp").forward(request, response);

		}
	}

}
