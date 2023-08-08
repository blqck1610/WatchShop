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
 * Servlet implementation class MenWatches
 */
public class MenWatches extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MenWatches() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		int page = 1;
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		
		int onsale = 0;
		ProductDAO productDAO = new ProductDAO();
		List<Product> products = productDAO.getProductsByGender("nam", 20);
		int itemsPerPage = 8;
		
		if(request.getParameterValues("onSale") != null) {
			 onsale = 1;
			for(int i = 0; i < products.size(); i++) {
				
				if (products.get(i).getSaleValue() == 0) {
					products.remove(products.get(i));
					i--;
				}
				
			}
			
		}
		
		
		int totalPage = (products.size() % itemsPerPage == 0)? products.size()/itemsPerPage : products.size() / itemsPerPage +1;
		int start = (page - 1) * itemsPerPage;
		int end = Math.min(page*itemsPerPage, products.size());
		
		products = productDAO.productsInPage(products, start, end);
		
		
		request.setAttribute("onsale", onsale);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("products", products);
		request.getRequestDispatcher("cate.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
