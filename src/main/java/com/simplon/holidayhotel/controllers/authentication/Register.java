package com.simplon.holidayhotel.controllers.authentication;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "Register", value = "/register")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Authentication/Register.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String full_name = request.getParameter("full_name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        System.out.println("<h1>Hello " + full_name +email + password + "!</h1>");

        request.setAttribute("register_message", "You have been registered successfully");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Authentication/Login.jsp");
        requestDispatcher.forward(request, response);
    }
}
