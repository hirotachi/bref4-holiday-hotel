package com.simplon.holidayhotel.controllers.authentication;


import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;


@WebFilter("/register")
public class RegisterFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        String method = httpServletRequest.getMethod();



        if(servletRequest.getParameter("full_name") == null) {
            filterChain.doFilter(servletRequest, servletResponse);
        } else {
            // verify the fields input
            String full_name = servletRequest.getParameter("full_name");
            String email = servletRequest.getParameter("email");
            String password = servletRequest.getParameter("password");

            // if the fields are empty
            if(full_name.isEmpty() || email.isEmpty() || password.isEmpty()) {
                // redirect to the register page
                // and display an error message
                servletRequest.setAttribute("error_message", "Please fill all the fields");
                servletRequest.setAttribute("full_name", full_name);
                servletRequest.setAttribute("email", email);
                RequestDispatcher requestDispatcher = servletRequest.getRequestDispatcher("/Authentication/Register.jsp");
                requestDispatcher.forward(servletRequest, servletResponse);
            } else {
                // if the fields are not empty
                // redirect to the home page
                filterChain.doFilter(servletRequest, servletResponse);
            }



            filterChain.doFilter(servletRequest, servletResponse);
        }



    }

}
