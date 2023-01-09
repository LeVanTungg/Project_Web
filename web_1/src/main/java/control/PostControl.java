package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ArticleDAO;
import entity.Article;

/**
 * Servlet implementation class PostControl
 */
@WebServlet("/PostControl")
public class PostControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			String id = request.getParameter("aid");
			int aid = Integer.parseInt(id);
			ArticleDAO articleDAO = new ArticleDAO();
			Article a = articleDAO.getArticle(aid);
			request.setAttribute("a", a);
			request.getRequestDispatcher("post.jsp").forward(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		try {
			String id = request.getParameter("aid");
			int aid = Integer.parseInt(id);
			ArticleDAO articleDAO = new ArticleDAO();
			Article a = articleDAO.getArticle(aid);
			request.setAttribute("a", a);
			request.getRequestDispatcher("post.jsp").forward(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
