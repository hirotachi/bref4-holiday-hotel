package com.simplon.holidayhotel.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "PromotionServlet", value = "/promotions")
public class PromotionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //TODO: get all promotions from dao and send them to the view
        request.getRequestDispatcher("/WEB-INF/promotions.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //TODO : create a new promotion and save it to the dao
        //response to the client with api
        response.setStatus(201);
        response.setContentType("application/json");
        response.getWriter().write("{\"message\":\"promotion created\"}");


    }
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //TODO : update a promotion and save it to the dao from the request body
        response.setStatus(200);
        response.setContentType("application/json");
        response.getWriter().write("{\"message\":\"promotion updated\"}");
    }

    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //TODO : delete a promotion and save it to the dao
        response.setStatus(200);
        response.setContentType("application/json");
        response.getWriter().write("{\"message\":\"promotion deleted\"}");
    }
}
