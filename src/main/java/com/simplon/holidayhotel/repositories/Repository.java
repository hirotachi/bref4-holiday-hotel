package com.simplon.holidayhotel.repositories;

import com.simplon.holidayhotel.config.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.HashMap;

public class Repository extends Connection {
    public static HashMap<String, Repository> repositories = new HashMap<>();
    private final String tableName;

    private Repository(String tableName) {
        this.tableName = tableName;
    }

    public static Repository getRepository(String name) {
        Repository repository = repositories.get(name);
        if(repository == null) {
            repository = new Repository(name);
            repositories.put(name, repository);
        }
        return repository;
    }

    public String getTableName() {
        return tableName;
    }

    public String createSelectQuery(String[] fields) {
        StringBuilder query = new StringBuilder("SELECT * FROM " + getTableName() + " WHERE ");
        for (int i = 0; i < fields.length; i++) {
            query.append(fields[i]).append(" = ?");
            if(i < fields.length-1) {
                query.append(" AND ");
            }
        }
        query.append(" order by id desc");
        return query.toString();
    }

    public ResultSet getByStringFields(String[] fields, String[] values) {
        String query = createSelectQuery(fields);
        try {
            PreparedStatement preparedStatement = Connection.getPreparedStatement(query);
            for (int i = 0; i < values.length; i++) {
                assert preparedStatement != null;
                preparedStatement.setString(i, values[i]);
            }
            assert preparedStatement != null;

            ResultSet resultSet = preparedStatement.executeQuery();
            if(!resultSet.next()) {
                return null;
            }
            return resultSet;
        } catch(SQLException e) {
            System.out.println("Error while getting from \"" + getTableName() + "\" by string fields: " + Arrays.toString(fields) + " values:" + Arrays.toString(values));
            return null;
        }
    }

}
