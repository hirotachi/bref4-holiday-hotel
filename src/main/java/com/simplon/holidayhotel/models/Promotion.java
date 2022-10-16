package com.simplon.holidayhotel.models;


import com.simplon.holidayhotel.annotation.Column;
import com.simplon.holidayhotel.annotation.Table;


//create table promotions (
//    id          serial primary key,
//    name        varchar(50)      not null,
//    percentage double not null,
//    room_type      integer[] not null,
//);

@Table(tableName = "promotions")
public class Promotion {

    @Column
    protected int id;
    @Column
    protected String name;
    @Column
    protected double percentage;

    @Column
    protected int[] room_type;

    public Promotion(int id, String name, double percentage, int[] room_type) {
        this.id = id;
        this.name = name;
        this.percentage = percentage;
        this.room_type = room_type;
    }

    public Promotion() {
    }
}
