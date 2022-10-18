package com.simplon.holidayhotel.controllers;

import com.simplon.holidayhotel.dao.DaoManager;
import com.simplon.holidayhotel.models.Extra;
import com.simplon.holidayhotel.utils.Helper;
import com.simplon.holidayhotel.utils.JSON;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.HttpConstraint;
import jakarta.servlet.annotation.ServletSecurity;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "ExtraServlet", value = "/extras")
@ServletSecurity(@HttpConstraint(rolesAllowed = "manager"))
public class ExtraServlet extends HttpServlet {

    private final DaoManager<Extra> dao = DaoManager.create(Extra.class);

    //    GET /extras
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Extra[] extras = dao.find();
        response.addHeader("Content-Type", "application/json");
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("extras", extras);
        map.put("count", extras.length);
        response.getWriter().println(JSON.stringify(map));
    }

    //    POST /extras
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//         get extra from request
        Extra extra = JSON.parse(request.getReader(), Extra.class);
        boolean saved = dao.save(extra);
        HashMap<String, Object> res = new HashMap<>();
        if (saved) {
            res.put("status", "success");
            res.put("message", "Extra saved");
            res.put("extra", extra);
            response.setStatus(201);
        } else {
            res.put("status", "error");
            res.put("message", "Extra not saved");
            response.setStatus(500);
        }
        response.setHeader("Content-Type", "application/json");
        response.getWriter().println(JSON.stringify(res));
    }


    //    PUT /extras?id=1
    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        if (id < 0) {
            resp.setStatus(400);
            resp.getWriter().println("Bad request");
            return;
        }
        Extra extra = dao.findByPrimary(id);
        if (extra == null) {
            resp.setStatus(404);
            resp.getWriter().println("Extra not found");
            return;
        }
        Extra extraFromRequest = JSON.parse(req.getReader(), Extra.class);
        Helper.copyNonEmptyProperties(extraFromRequest, extra);
        boolean updated = dao.save(extra);
        HashMap<String, Object> res = new HashMap<>();
        if (updated) {
            res.put("status", "success");
            res.put("message", "Extra updated");
            res.put("extra", extra);
            resp.setStatus(200);
        } else {
            res.put("status", "error");
            res.put("message", "Extra not updated");
            resp.setStatus(500);
        }
        resp.setHeader("Content-Type", "application/json");
        resp.getWriter().println(JSON.stringify(res));
    }

    //    DELETE /extras?id=1
    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        if (id < 0) {
            resp.setStatus(400);
            resp.getWriter().println("Bad request");
            return;
        }
        Extra extra = dao.findByPrimary(id);
        if (extra == null) {
            resp.setStatus(404);
            resp.getWriter().println("Extra not found");
            return;
        }
        boolean deleted = dao.softDelete(extra);
        HashMap<String, Object> res = new HashMap<>();
        if (deleted) {
            res.put("status", "success");
            res.put("message", "Extra deleted");
            resp.setStatus(200);
        } else {
            res.put("status", "error");
            res.put("message", "Extra not deleted");
            resp.setStatus(500);
        }
        resp.setHeader("Content-Type", "application/json");
        resp.getWriter().println(JSON.stringify(res));
    }
}
