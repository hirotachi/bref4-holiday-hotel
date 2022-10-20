package com.simplon.holidayhotel.controllers;

import com.simplon.holidayhotel.dao.DaoManager;
import com.simplon.holidayhotel.models.Promotion;
import com.simplon.holidayhotel.utils.Helper;
import com.simplon.holidayhotel.utils.JSON;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "PromotionsServlet", value = "/promotions")
public class PromotionsServlet extends HttpServlet {
    private final DaoManager<Promotion> dao = DaoManager.create(Promotion.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Promotion[] promotions = dao.find();
        if (response.getHeader("content-type").equals("application/json")) {
            response.addHeader("Content-Type", "application/json");
            HashMap<String, Object> map = new HashMap<String, Object>();
            map.put("promotions", promotions);
            map.put("count", promotions.length);
            response.getWriter().println(JSON.stringify(map));
        } else {
            request.setAttribute("promotions", promotions);
            request.getRequestDispatcher("/WEB-INF/views/promotions/index.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Promotion promotion = JSON.parse(request.getReader(), Promotion.class);
        boolean saved = dao.save(promotion);
        HashMap<String, Object> res = new HashMap<>();
        if (saved) {
            res.put("status", "success");
            res.put("message", "Promotion saved");
            res.put("promotion", promotion);
            response.setStatus(201);
        } else {
            res.put("status", "error");
            res.put("message", "Promotion not saved");
            response.setStatus(500);
        }
        response.setHeader("Content-Type", "application/json");
        response.getWriter().println(JSON.stringify(res));
    }

    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        if (id < 0) {
            response.setStatus(400);
            response.getWriter().println("Bad request");
        } else {
            Promotion promotion = JSON.parse(request.getReader(), Promotion.class);
            boolean updated = dao.update(promotion);
            HashMap<String, Object> res = new HashMap<>();
            if (updated) {
                res.put("status", "success");
                res.put("message", "Promotion updated");
                res.put("promotion", promotion);
                response.setStatus(200);
            } else {
                res.put("status", "error");
                res.put("message", "Promotion not updated");
                response.setStatus(500);
            }
            response.setHeader("Content-Type", "application/json");
            response.getWriter().println(JSON.stringify(res));
        }
    }

    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        if (id < 0) {
            response.setStatus(400);
            response.getWriter().println("Bad request");
        } else {
            Promotion promotion = dao.findByPrimary(id);
            if (promotion == null) {
                response.setStatus(404);
                response.getWriter().println("Promotion not found");
            }
            boolean deleted = dao.softDelete(promotion);
            HashMap<String, Object> res = new HashMap<>();
            if (deleted) {
                res.put("status", "success");
                res.put("message", "Promotion deleted");
                res.put("promotion", promotion);
                response.setStatus(200);
            } else {
                res.put("status", "error");
                res.put("message", "Promotion not deleted");
                response.setStatus(500);
            }
            response.setHeader("Content-Type", "application/json");
            response.getWriter().println(JSON.stringify(res));
        }
    }
}