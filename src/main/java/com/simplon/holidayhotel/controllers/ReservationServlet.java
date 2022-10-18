package com.simplon.holidayhotel.controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import com.simplon.holidayhotel.dao.DaoManager;
import com.simplon.holidayhotel.models.Reservation;
import com.simplon.holidayhotel.utils.Helper;
import com.simplon.holidayhotel.utils.JSON;




import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "ReservationServlet", value = "/reservations")
public class ReservationServlet extends HttpServlet {

    private final DaoManager<Reservation> dao = DaoManager.create(Reservation.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Reservation[] reservations = dao.find();
        response.addHeader("Content-Type", "application/json");
        response.getWriter().println(JSON.stringify(reservations));

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Reservation reservation = JSON.parse(request.getReader(), Reservation.class);
        boolean saved = dao.save(reservation);
        if (saved) {
            response.setStatus(201);
            response.getWriter().println("Reservation saved");
        } else {
            response.setStatus(500);
            response.getWriter().println("Reservation not saved");
        }
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Reservation reservation = JSON.parse(request.getReader(), Reservation.class);
        boolean updated = dao.update(reservation);
        if (updated) {
            response.setStatus(200);
            response.getWriter().println("Reservation updated");
        } else {
            response.setStatus(500);
            response.getWriter().println("Reservation not updated");
        }
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        if (id < 0) {
            response.setStatus(400);
            response.getWriter().println("Bad request");
            return;
        }
        Reservation reservation = dao.findByPrimary(id);
        HashMap<String, Object> res = new HashMap<>();
        if (reservation == null) {
            res.put("status", "error");
            res.put("message", "Reservation not found");
            response.setStatus(404);
            return;
        }
        boolean deleted = dao.softDelete(reservation);
        if (deleted) {
            res.put("status", "success");
            res.put("message", "Reservation deleted");
            response.setStatus(200);


        } else {
            res.put("status", "error");
            res.put("message", "Reservation not deleted");
            response.setStatus(500);

        }
        response.setHeader("Content-Type", "application/json");
        response.getWriter().println(JSON.stringify(res));
    }

}
