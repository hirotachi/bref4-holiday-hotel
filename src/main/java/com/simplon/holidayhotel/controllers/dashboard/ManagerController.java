package com.simplon.holidayhotel.controllers.dashboard;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

@WebServlet(name = "ManagerController", value = "/dashboard")
public class ManagerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = "";
        if (request.getParameter("page") != null) {
            page = request.getParameter("page");
        }
        if (page == "") {
            RequestDispatcher rd = request.getRequestDispatcher("/dashboard/ManagerDashboard.jsp");
            rd.forward(request, response);
        } else if (page.equals("room-management")) {
            ArrayList rooms = new ArrayList();
            request.setAttribute("data", rooms);
            RequestDispatcher rd;
            rd = request.getRequestDispatcher("/dashboard/RoomManagment.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
