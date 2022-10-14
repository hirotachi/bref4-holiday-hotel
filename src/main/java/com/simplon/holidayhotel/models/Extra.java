package com.simplon.holidayhotel.models;


import com.simplon.holidayhotel.annotation.Table;

//create table extras (
//    id    serial primary key,
//    name  varchar(255) not null,
//    price integer     not null
//);

@Table(tableName = "extras")
public class Extra extends Model{
    protected int id;
    protected String name;
    protected int price;

    public Extra(int id, String name, int price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }
}
