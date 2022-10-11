package com.simplon.holidayhotel;

import jakarta.ws.rs.*;

@Path("/hello-world")
public class Reservation {
    @GET
    @Produces("text/plain")
    public String hello() {
        return "Hello, World!";
    }
}