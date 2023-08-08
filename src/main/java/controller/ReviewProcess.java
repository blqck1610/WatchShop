package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Review;
import model.User;

import java.io.IOException;

import dal.CommonDAO;
import dal.OrderDAO;

/**
 * Servlet implementation class ReviewProcess
 */
public class ReviewProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewProcess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String orderIdRaw = request.getParameter("orderIdRv");
		String idProductRaw = request.getParameter("idProduct");
		String rvPer = request.getParameter("rvper");
		
		String ratingraw = request.getParameter("rating");
		
		
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String review = request.getParameter("review");
		
		
		
		
		int orderId = Integer.parseInt(orderIdRaw);
		int idProduct = Integer.parseInt(idProductRaw);
		if(ratingraw == null ) {
			ratingraw = "0";
		}
		int rating = Integer.parseInt(ratingraw) + 1;
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		CommonDAO commonDAO = new CommonDAO();
		OrderDAO orderDAO = new OrderDAO();
		orderDAO.setReviewPer(orderId, idProduct, Integer.parseInt(rvPer));
		commonDAO.addReview(idProduct, user.getUserID() ,rating, name, review, title );
		
		
		response.sendRedirect("orderDetails");
	}

}
