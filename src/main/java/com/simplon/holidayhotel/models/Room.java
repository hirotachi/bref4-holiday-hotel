package com.simplon.holidayhotel.models;


//create table rooms (
//    id     serial primary key,
//    type   integer not null,
//    price  double  not null,
//    images text[] not null,
//    manager_id integer not null references "users" (id),
//);

import com.simplon.holidayhotel.annotation.Table;

@Table(tableName = "Rooms")
public class Room extends Model {
    protected int id;
    protected int type;
    protected double price;
    protected String[] images;
    protected int manager_id;

    public Room(int id, int type, double price, String[] images, int manager_id) {
        this.id = id;
        this.type = type;
        this.price = price;
        this.images = images;
        this.manager_id = manager_id;
    }





}
