package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;
import model.Product;

import java.io.IOException;

import dal.ProductDAO;

/**
 * Servlet implementation class Process
 */
public class Process extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Process() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String process = request.getParameter("process");
		String numRaw = request.getParameter("num");
		String idProductRaw = request.getParameter("idProduct");
		HttpSession session = request.getSession();
		Cart cart =(Cart) session.getAttribute("cart");
		int idProduct = Integer.parseInt(idProductRaw);
		ProductDAO productDAO = new ProductDAO();
		Product product = productDAO.getProduct(idProduct);
		if(numRaw != null) {
			
			int num = Integer.parseInt(numRaw);
			int newQuantity = cart.getItems().get(product) + num;
			if(newQuantity <= 0) {
				cart.getItems().remove(product);
			}
			else {
				cart.getItems().put(product, newQuantity);
			}
		}
		if( process != null) {
			if(process.equals("del")) {
				cart.getItems().remove(product);
			}
		}
		
		String pageForward = "checkout";
		if(cart.getItems().size() == 0) {
			session.removeAttribute("cart");
			pageForward = "home";
		}
		session.removeAttribute("cart");
		session.setAttribute("cart", cart);
		response.sendRedirect(pageForward);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
