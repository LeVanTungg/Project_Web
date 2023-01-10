package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AccountDAO;
import entity.Account;

/**
 * Servlet implementation class SignUpControl
 */
@WebServlet("/signup")
public class SignUpControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("signup.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("user");
		String password = request.getParameter("pass");
		String repassword = request.getParameter("repass");
		if(!password.equalsIgnoreCase(repassword)) {
			request.setAttribute("mess", "pleae input same password");
			request.getRequestDispatcher("signup.jsp").forward(request, response);
		}else {
			AccountDAO aDAO = new AccountDAO();
			Account a = aDAO.checkLogin(username, password);
			if(a != null) {
				request.setAttribute("mess", "Username is exist");
				request.getRequestDispatcher("signup.jsp").forward(request, response);
				
			}else {
				aDAO.createAccount(username, password);
				response.sendRedirect("login");
			}
		}
		
	}

}
