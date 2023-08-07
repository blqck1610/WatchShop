package controller;

import java.io.IOException;

import dal.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Product;
import model.Cart;

/**
 * Servlet implementation class CartProcess
 */
public class CartProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartProcess() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		String quantityRaw = request.getParameter("quantity");
//		int quantity = Integer.parseInt(quantityRaw);
//		String idProduct = request.getParameter("idProduct");
//		HttpSession session = request.getSession();
//
//		Cart cart = (Cart) session.getAttribute("cart");
//		if (cart == null) {
//
//			cart = new Cart();
//		}
//		ProductDAO productDAO = new ProductDAO();
//		Product product = productDAO.getProduct(Integer.parseInt(idProduct));
//
//		if (cart.getItems().containsKey(product)) {
//			cart.getItems().put(product, cart.getItems().get(product) + quantity);
//		} else {
//			cart.getItems().put(product, quantity);
//		}
//
//		request.setAttribute("idProduct", idProduct);
//		session.setAttribute("cart", cart);
//		request.getRequestDispatcher("productDetails").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String quantityRaw = request.getParameter("quantity");
		int quantity = Integer.parseInt(quantityRaw);
		String idProduct = request.getParameter("idProduct");
		HttpSession session = request.getSession();

		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null) {

			cart = new Cart();
		}
		ProductDAO productDAO = new ProductDAO();
		Product product = productDAO.getProduct(Integer.parseInt(idProduct));

		if (cart.getItems().containsKey(product)) {
			cart.getItems().put(product, cart.getItems().get(product) + quantity);
		} else {
			cart.getItems().put(product, quantity);
		}

		request.setAttribute("idProduct", idProduct);
		session.setAttribute("cart", cart);
		request.getRequestDispatcher("productDetails").forward(request, response);
	}

}
