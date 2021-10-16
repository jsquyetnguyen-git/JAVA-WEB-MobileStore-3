package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ListProductDAO;
import model.Product;

/**
 * Servlet implementation class InformationProductController
 */
@WebServlet("/InformationProductController")
public class InformationProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InformationProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		ListProductDAO dao = new ListProductDAO();
		try {
			Product p = dao.getProduct(id);
			
			String display = p.getDescription().substring(0,p.getDescription().indexOf("HDH"));
			request.setAttribute("display", display);
			
			String hdh = p.getDescription().substring(p.getDescription().indexOf("HDH"),p.getDescription().indexOf("RAM"));
			request.setAttribute("hdh", hdh);
			
			String ram = p.getDescription().substring(p.getDescription().indexOf("RAM"),p.getDescription().indexOf("Camera"));
			request.setAttribute("ram", ram);
			
			String camera = p.getDescription().substring(p.getDescription().indexOf("Camera"),p.getDescription().length());
			request.setAttribute("camera", camera);
			
			request.setAttribute("productDetail", p);
			request.getRequestDispatcher("productInfo.jsp").forward(request, response);
			
		} catch (Exception e) {
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
