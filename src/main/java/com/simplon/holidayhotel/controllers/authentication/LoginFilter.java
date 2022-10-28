package com.simplon.holidayhotel.controllers.authentication;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;

import java.io.IOException;

@WebFilter("/login")
public class LoginFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        if(request.getParameter("email") == null) {
            chain.doFilter(request, response);
        } else {
            // verify the fields input
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            // if the fields are empty
            if(email.isEmpty() || password.isEmpty()) {
                // redirect to the login page
                // and display an error message
                request.setAttribute("error_message", "Please fill all the fields");
                request.setAttribute("email", email);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Authentication/Login.jsp");
                requestDispatcher.forward(request, response);
            } else {
                // if the fields are not empty
                // redirect to the home page
                chain.doFilter(request, response);
            }
        }
    }
}
