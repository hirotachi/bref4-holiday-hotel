package com.simplon.holidayhotel.models;

//create table promotions (
//    id          serial primary key,
//    name        varchar(50)      not null,
//    percentage double not null,
//    room_type      integer[] not null,
//);

import com.simplon.holidayhotel.annotation.Table;

@Table(tableName = "promotions")
public class Promotion extends Model {
    protected int id;
    protected String name;
    protected double percentage;
    protected int[] room_type;

    public Promotion(int id, String name, double percentage, int[] room_type) {
        this.id = id;
        this.name = name;
        this.percentage = percentage;
        this.room_type = room_type;
    }
}
