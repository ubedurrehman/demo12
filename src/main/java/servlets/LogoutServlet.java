package servlets;

import entities.Message;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LogoutServlet", value = "/LogoutServlet")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        out.print("ddd");

        HttpSession s = request.getSession();
        s.removeAttribute("currentUser");

        Message m = new Message("Logout Successfully","sucess","alert-success");
        s.setAttribute("msg",m);

        response.sendRedirect("login_page.jsp");

    }
}
