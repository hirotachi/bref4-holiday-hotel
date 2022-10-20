package com.simplon.holidayhotel.models;


//create table rooms (
//    id     serial primary key,
//    type   integer not null,
//    price  double  not null,
//    images text[] not null,
//    manager_id integer not null references "users" (id),
//);

import com.simplon.holidayhotel.annotation.Column;
import com.simplon.holidayhotel.annotation.Table;

@Table(tableName = "Rooms")
public class Room {
    @Column
    protected int id;
    @Column
    protected int type;
    @Column
    protected double price;
    @Column
    protected String[] images;

    @Column
    protected int manager_id;

    public Room(int id, int type, double price, String[] images, int manager_id) {
        this.id = id;
        this.type = type;
        this.price = price;
        this.images = images;
        this.manager_id = manager_id;
    }

    public Room() {
    }

    public int getId() {
        return id;
    }

    public int getType() {
        return type;
    }

    public double getPrice() {
        return price;
    }

    public String[] getImages() {
        return images;
    }

    public int getManager_id() {
        return manager_id;
    }


}
