package servlets;

import dao.ConnectionProvider;
import dao.UserDao;
import entities.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@MultipartConfig
@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        String check=request.getParameter("check");
        if(check==null){
            out.println("box not checked");
            out.println("Check  "+check);
        }else {
            String name=request.getParameter("user_name");
            String email=request.getParameter("user_email");
            String password=request.getParameter("user_password");
            String gender=request.getParameter("gender");
            String about=request.getParameter("about");

            User user=new User(name,email,password,gender,about);

            UserDao dao=new UserDao(ConnectionProvider.getConnection());
            if(dao.saveUser(user)){
                out.println("done");
            }else{
                out.println("error");
            }



    }
    }
}
