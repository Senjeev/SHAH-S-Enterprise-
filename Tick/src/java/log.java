    import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.PrintWriter;
import static java.lang.System.out;
@WebServlet(name = "log", urlPatterns = {"/log"})
public class log extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
	try (PrintWriter out = response.getWriter()) {
        String userName = request.getParameter("name");
        String password = request.getParameter("pass"); 
        /*LoginBean loginBean = new LoginBean(); 
        loginBean.setUserName(userName); 
        loginBean.setPassword(password);
        LoginDao loginDao = new LoginDao();  */
        login HAS= new login();
        String userValidate = HAS.authenticateUser(userName, password);  
        if(userValidate.equals("SUCCESS")) 
        {
             request.setAttribute("userName", userName); 
             request.getRequestDispatcher("/Home.jsp").forward(request, response);
        }
        else if(userValidate.equals("Invalid User -- Sign Up"))
        {

            request.setAttribute("errMessage", userValidate);
            
            request.getRequestDispatcher("/log.jsp").forward(request, response);
        }
        else
        {
            request.setAttribute("errMessage", userValidate); 
            request.getRequestDispatcher("/HoLo.jsp").forward(request, response);
        }
	}
	catch(Exception e) {
		System.out.println(e);
	}
    }
}