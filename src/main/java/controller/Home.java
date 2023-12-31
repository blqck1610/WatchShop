package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;

import java.io.IOException;
import java.util.List;

import dal.ProductDAO;

/**
 * Servlet implementation class Home
 */
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductDAO productDAO = new ProductDAO();
		 
		List<Product> productNames = productDAO.getProducts("productName", 4);
		List<Product> productNews = productDAO.getProducts("idProduct", 8);
		List<Product> productMens = productDAO.getProductsByGender("Nam", 8);
		List<Product> productWomens = productDAO.getProductsByGender("Nữ", 8);
		
	
		
		request.setAttribute("productNews", productNews);		
		request.setAttribute("productNames", productNames);		
		request.setAttribute("productMens", productMens);		
		request.setAttribute("productWomens", productWomens);		
		
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
