package com.simplon.holidayhotel.controllers;

import com.simplon.holidayhotel.dao.DaoManager;
import com.simplon.holidayhotel.models.Room;
import com.simplon.holidayhotel.utils.Helper;
import com.simplon.holidayhotel.utils.JSON;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "RoomServlet", value = "/rooms")
public class RoomServlet extends HttpServlet {
    DaoManager<Room> daoManager = DaoManager.create(Room.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //todo: get all rooms  using dao from database
//        request.getRequestDispatcher("/pages/rooms.jsp").forward(request, response);
        boolean wantsJSON = request.getHeader("Accept").contains("application/json");
        Room[] rooms = daoManager.find();
        int count = rooms.length;
        HashMap<String, Object> map = new HashMap<>();
        map.put("count", count);
        map.put("rooms", rooms);
        if (wantsJSON) {
            response.setContentType("application/json");
            response.getWriter().println(map);
        } else {
            request.setAttribute("rooms", rooms);
                request.getRequestDispatcher("/pages/rooms.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Room room = JSON.parse(request.getReader(), Room.class);
        boolean saved = daoManager.save(room);
        HashMap<String, Object> res = new HashMap<>();
        if (saved) {
            res.put("status", "success");
            res.put("message", "Room saved");
            res.put("room", room);
            response.setStatus(201);
        } else {
            res.put("status", "error");
            res.put("message", "Room not saved");
            response.setStatus(500);
        }
        response.setHeader("Content-Type", "application/json");
            response.getWriter().println(JSON.stringify(res));
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        if (id < 0) {
            resp.setStatus(400);
            resp.getWriter().println("Bad request");
        } else {
            Room room = daoManager.findByPrimary(id);
            if(room == null){
                resp.setStatus(404);
                resp.getWriter().println("Room not found");
                return;
            }
            Room roomFromReq = JSON.parse(req.getReader(), Room.class);
            Helper.copyNonEmptyProperties(roomFromReq, room);
            boolean updated = daoManager.update(room);
            HashMap<String, Object> res = new HashMap<>();
            if (updated) {
                res.put("status", "success");
                res.put("message", "Room updated");
                res.put("room", room);
                resp.setStatus(200);
            } else {
                res.put("status", "error");
                res.put("message", "Room not updated");
                resp.setStatus(500);
            }
            resp.setHeader("Content-Type", "application/json");
            resp.getWriter().println(JSON.stringify(res));
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        if (id < 0) {
            resp.setStatus(400);
            resp.getWriter().println("Bad request");
        } else {
            Room room = daoManager.findByPrimary(id);
            if(room == null){
                resp.setStatus(404);
                resp.getWriter().println("Room not found");
                return;
            }
            boolean deleted = daoManager.softDelete(room);
            HashMap<String, Object> res = new HashMap<>();
            if (deleted) {
                res.put("status", "success");
                res.put("message", "Room deleted");
                res.put("room", room);
                resp.setStatus(200);
            } else {
                res.put("status", "error");
                res.put("message", "Room not deleted");
                resp.setStatus(500);
            }
            resp.setHeader("Content-Type", "application/json");
            resp.getWriter().println(JSON.stringify(res));
        }
    }
}




