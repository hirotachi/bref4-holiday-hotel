package com.simplon.holidayhotel.controllers.authentication;


import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;


@WebFilter("/register")
public class RegisterFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        String method = httpServletRequest.getMethod();



        if(request.getParameter("full_name") == null) {
            chain.doFilter(request, response);
        } else {
            // verify the fields input
            String full_name = request.getParameter("full_name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            // if the fields are empty
            if(full_name.isEmpty() || email.isEmpty() || password.isEmpty()) {
                // redirect to the register page
                // and display an error message
                request.setAttribute("error_message", "Please fill all the fields");
                request.setAttribute("full_name", full_name);
                request.setAttribute("email", email);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Authentication/Register.jsp");
                requestDispatcher.forward(request, response);
            } else {
                // if the fields are not empty
                // redirect to the home page
                chain.doFilter(request, response);
            }



            chain.doFilter(request, response);
        }



    }

}
