package com.simplon.holidayhotel.models;

//create table users (
//    id       serial primary key not null,
//    name     varchar(255)       not null,
//    password varchar(255)       not null,
//    email    varchar(255)       not null,
//    role     integer default 1  not null
//);

import com.simplon.holidayhotel.annotation.Table;

import java.sql.ResultSet;
import java.sql.SQLException;

@Table(tableName = "users")
public class User extends Model {
    protected int id;
    protected String name;
    protected String password;
    protected String email;
    protected int role;

    public User(int id, String name, String password, String email, int role) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.email = email;
        this.role = role;
    }

    public static User fromResultSet(ResultSet resultSet) {
        if(resultSet == null) {
            return null;
        }
        try {
            return new User(
                    resultSet.getInt("id"),
                    resultSet.getString("name"),
                    resultSet.getString("password"),
                    resultSet.getString("email"),
                    resultSet.getInt("role")
            );
        } catch(SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static User getById(int id) {

    }


}
