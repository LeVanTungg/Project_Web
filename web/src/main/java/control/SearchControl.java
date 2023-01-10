package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ArticleDAO;
import entity.Article;

/**
 * Servlet implementation class SearchControl
 */
@WebServlet("/search")
public class SearchControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchControl() {
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
		try {
			ArticleDAO aDao = new ArticleDAO();
			List<Article> list = new ArrayList<>();
			List<Article> listNew = aDao.getTopNew();
			List<Article> listView = aDao.getTop10View();
			String txt = request.getParameter("txtSearch");
			list = aDao.searchArticle(txt);
			System.out.println("------------");
			System.out.println(list);
			request.setAttribute("resultSearch", "Result search for '"+txt+"'");
			request.setAttribute("txt", txt);
			
			
			request.setAttribute("list", list);
			request.setAttribute("listView", listView);
			request.setAttribute("listNew", listNew);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

}
