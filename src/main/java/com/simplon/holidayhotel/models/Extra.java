package com.simplon.holidayhotel.models;


import com.simplon.holidayhotel.annotation.Column;
import com.simplon.holidayhotel.annotation.Table;

//create table extras (
//    id    serial primary key,
//    name  varchar(255) not null,
//    price integer     not null
//);

@Table(tableName = "extras")
public class Extra {
    @Column
    protected int id;


    @Column
    protected String name;
    @Column
    protected double price;


    public Extra(int id, String name, double price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }

    public Extra() {
    }

}
