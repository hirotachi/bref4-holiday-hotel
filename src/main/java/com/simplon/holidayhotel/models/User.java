package com.simplon.holidayhotel.models;


import com.simplon.holidayhotel.annotation.Column;
import com.simplon.holidayhotel.annotation.Table;


//create table users (
//    id       serial primary key not null,
//    name     varchar(255)       not null,
//    password varchar(255)       not null,
//    email    varchar(255)       not null,
//    role     integer default 1  not null
//);
@Table(tableName = "users")
public class User {
    @Column
    protected int id;
    @Column
    protected String name;
    @Column
    protected String password;
    @Column
    protected String email;
    @Column
    protected int role;

    public User(int id, String name, String password, String email, int role) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.email = email;
        this.role = role;
    }

    public User() {
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public int getRole() {
        return role;
    }


}
