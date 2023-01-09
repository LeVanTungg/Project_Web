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
 * Servlet implementation class LoadByCateControl
 */
@WebServlet("/aCate")
public class LoadByCateControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadByCateControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	try {
		ArticleDAO aDao = new ArticleDAO();
		List<Article> list = new ArrayList<>();
		String aid = request.getParameter("cid");
		if(aid == null) {
		       list  = aDao.getAllArticle();
		}else {
			int id = Integer.parseInt(aid);
			list  = aDao.getArticleByCid(id);
		}
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("home.jsp").forward(request, response);
	} catch (Exception e) {
		// TODO: handle exception
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
