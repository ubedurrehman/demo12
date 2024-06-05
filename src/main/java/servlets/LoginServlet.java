package servlets;

import dao.ConnectionProvider;
import dao.UserDao;
import entities.Message;
import entities.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        PrintWriter out = response.getWriter();
        response.setContentType("text/html");


        String userEmail=request.getParameter("email");
        String userPassword=request.getParameter("password");
        UserDao dao=new UserDao(ConnectionProvider.getConnection());
        User u=dao.getUserByEmailandPassword(userEmail,userPassword);

        if(u==null){

         //   out.println("Invalid Details Try Again..");
            Message msg=new Message("invalid Details ! try with another","error","alert alert-danger");
            HttpSession s= request.getSession();
            s.setAttribute("msg", msg);
            response.sendRedirect("login_page.jsp");
        }else {
            HttpSession s=request.getSession();
            s.setAttribute("currentUser", u);
            response.sendRedirect("profile.jsp");
        }
    }
}
