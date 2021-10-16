package controller.product;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ListProductDAO;
import model.Product;

/**
 * Servlet implementation class SearchController
 */
@WebServlet("/SearchController")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String keyword = request.getParameter("search");
		
		ListProductDAO dao = new ListProductDAO();
		
		//cookie for keyword (1 day)
		Cookie cookie = new Cookie("key", keyword);
		cookie.setMaxAge(60*60*24);
		response.addCookie(cookie);
		
		try {
			List<Product> searchList = dao.search(keyword);
			
			request.setAttribute("phonelist", searchList);	
			
			if(searchList.isEmpty()) {
				List<Product> suggest = dao.search("samsung");
				request.setAttribute("suggest",suggest);
				request.setAttribute("key",keyword);
			}
			
			request.getRequestDispatcher("search.jsp").forward(request, response);		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
