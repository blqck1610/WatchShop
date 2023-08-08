package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import dal.OrderDAO;

/**
 * Servlet implementation class OrderEdit
 */
public class OrderEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderEdit() {
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
		String status = request.getParameter("status");
		String orderIdRaw = request.getParameter("orderId");
		String idProductRaw = request.getParameter("idProduct");
		
		int orderId = Integer.parseInt(orderIdRaw);
		int idProduct = Integer.parseInt(idProductRaw);
		
		OrderDAO orderDAO = new OrderDAO();
		orderDAO.editStatus(status, orderId, idProduct);
		
		response.sendRedirect("orderlist");
		
	}

}
