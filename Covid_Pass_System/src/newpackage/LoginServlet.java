package newpackage;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		
		//feth data from login form
        
        String logemail = request.getParameter("email");
        String logpass = request.getParameter("password");
        System.out.println(logemail+" "+logpass );
        
        UserDatabase db =  new UserDatabase(ConnectionPro.getConnection());
        User user = db.login(logemail, logpass);
        System.out.println(user.getEmail()+" "+user.getPassword());
        if(user!=null){
            HttpSession session = request.getSession();
            session.setAttribute("login", user);
            response.sendRedirect("welcome.jsp");
        }else{
            System.out.println("user not found");
        }

		
	}

}
