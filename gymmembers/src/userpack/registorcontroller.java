package userpack;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MyPack.User;
import MyPack.UserDao;

/**
 * Servlet implementation class registorcontroller
 */
@WebServlet("/registorcontroller")
public class registorcontroller extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static String INSERT_OR_EDIT = "/registration.jsp";
    private static String LIST_REG = "/listregistration.jsp";
    
    private registorDao dao;
  
    public registorcontroller() throws ClassNotFoundException, SQLException {
        super();
        dao = new registorDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 
    	
    	registration registration = new registration();
    	registration.setfullname(request.getParameter("fullname"));
    	registration.setemail(request.getParameter("email"));
       
    	registration.setaddr(request.getParameter("addr"));
    	 int Age=Integer.parseInt(request.getParameter("age"));
    	 registration.setage(Age);
    	 int Number=Integer.parseInt(request.getParameter("number1"));
    	registration.setnumber1(Number);
    	
        
        
 
   
        RequestDispatcher view = request.getRequestDispatcher(LIST_REG);
        request.setAttribute("users", dao.getAllUsers());
        view.forward(request, response);
    }
}
