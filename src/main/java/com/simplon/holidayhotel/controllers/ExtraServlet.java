package com.simplon.holidayhotel.controllers;

import com.simplon.holidayhotel.dao.DaoManager;
import com.simplon.holidayhotel.models.Extra;
import com.simplon.holidayhotel.utils.JSON;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "ExtraServlet", value = "/extras")
public class ExtraServlet extends HttpServlet {

    private final DaoManager<Extra> dao = DaoManager.create(Extra.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Extra[] extras = dao.find();
        response.addHeader("Content-Type", "application/json");
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("extras", extras);
        map.put("count", extras.length);
        response.getWriter().println(JSON.stringify(map));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
