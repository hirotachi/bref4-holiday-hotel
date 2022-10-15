package com.simplon.holidayhotel.config;

import org.postgresql.Driver;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Objects;

abstract public class Connection {

    private static java.sql.Connection connection;


    public static java.sql.Connection getConnection() {
        if (connection == null) {
            try {
                String host  = Configuration.getConfig("POSTGRES_HOST");
                String db  = Configuration.getConfig("POSTGRES_DB");
                String port  = Configuration.getConfig("POSTGRES_PORT");
                String user  = Configuration.getConfig("POSTGRES_USERNAME");
                String pass  = Configuration.getConfig("POSTGRES_PASSWORD");
                Class.forName("org.postgresql.Driver");
                String url = "jdbc:postgresql://"+host+":"+port+"/"+db;
                connection = java.sql.DriverManager.getConnection(url, user, pass);
                return connection;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        return connection;
    }


    public static PreparedStatement getPreparedStatement(String query) throws SQLException {
        return Objects.requireNonNull(getConnection())
                      .prepareStatement(query, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
    }

}
