package com.simplon.holidayhotel.controllers.authentication;

import com.simplon.holidayhotel.models.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "Login", value = "/login")
public class Login extends HttpServlet {
    String message;
    public void init() {
        message = "Hello lol!";
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Authentication/Login.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = new User(2, "Youness", "maska", "maska@gmail.com", 2);
        HttpSession session = request.getSession();

        if(user.getEmail().equals(email)) {
            System.out.println("authentication success");
            session.setAttribute("userDetails", user.getEmail());
        }
        response.sendRedirect("/home");
    }
}
