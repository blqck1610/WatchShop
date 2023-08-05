package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dal.CommonDAO;
import dal.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;
import model.Review;

/**
 * Servlet implementation class ProductDetails
 */
public class ProductDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		String productIdRaw =(String) request.getParameter("productID");
		String productIdRaw = "2";
		int numberPerPage = 8;
		int reviewNumPage = 1;
		int numReviews = 0;
		CommonDAO commonDAO = new CommonDAO();
		double avgScore = commonDAO.getAvgScore(Integer.parseInt(productIdRaw));
		List<Review> reviews = commonDAO.getReviews(Integer.parseInt(productIdRaw));
		List<Review> reviewsToClient = null;
		
		String reviewNumPageRaw = request.getParameter("reviewNumPage");
		if(reviewNumPageRaw != null) {
			reviewNumPage = Integer.parseInt(reviewNumPageRaw);
		}
		int totalReviewPages = 1;
		if(reviews != null) {
			reviewsToClient = new ArrayList<>();
			numReviews = reviews.size();
			
			totalReviewPages = (reviews.size() / numberPerPage) + 1;
			for(int indexReviews = 0 + reviewNumPage - 1; indexReviews < numberPerPage + reviewNumPage -1; indexReviews++) {
				if(indexReviews >= reviews.size()) {
					break;
				}
				
				reviewsToClient.add(reviews.get(indexReviews));
				
			}
		}
	
		request.setAttribute("reviews", reviewsToClient);
		request.setAttribute("numReviews", numReviews);
		request.setAttribute("avgScore", avgScore);
		request.setAttribute("totalReviewPage", totalReviewPages);
			
		
		
		ProductDAO productDAO = new ProductDAO();
		Product product = productDAO.getProduct(Integer.parseInt(productIdRaw));
		if (product != null) {
			request.setAttribute("product", product);
			
			request.getRequestDispatcher("productDetails.jsp").forward(request, response);
		}
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
