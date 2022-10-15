package com.simplon.holidayhotel.dao;

import com.simplon.holidayhotel.annotation.Table;
import com.simplon.holidayhotel.config.Connection;
import com.simplon.holidayhotel.utils.Helper;
import com.simplon.holidayhotel.utils.TableUtils;

import java.lang.reflect.Field;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DaoManager<T> {
    private final String tableName;
    private final Class<T> type;

    private final String primaryKeyField;

    public DaoManager(String tableName, Class<T> type, String primaryKeyField) {
        this.tableName = tableName;
        this.type = type;
        this.primaryKeyField = primaryKeyField;
    }

    public static <T> DaoManager<T> create(Class<T> clazz) {
        Table table = clazz.getAnnotation(Table.class);
        String name = table.tableName();
        String primaryKeyField = table.primaryKey();
        return new DaoManager<>(name, clazz, primaryKeyField);
    }

    public T[] findByAnd(String[] fields, Object[] values, int limit, int offset) {
        return find(fields, values, "AND", limit, offset);
    }

    public T[] findByOr(String[] fields, Object[] values, int limit, int offset) {
        return find(fields, values, "OR", limit, offset);
    }

    public T[] findAll(String[] fields, Object[] values) {
        return find(fields, values, null, -1, -1);
    }

    public T[] find() {
        return find(null, null, null, -1, -1);
    }

    public T[] find(String[] fields, Object[] values, String operator, int limit, int offset) {
        StringBuilder query = new StringBuilder("SELECT * FROM " + tableName);
        if (fields != null && values != null) {
            query.append(" WHERE ");
            for (int i = 0; i < fields.length; i++) {
                query.append(fields[i]).append(" = ?");
                if (i < fields.length - 1) {
                    query.append(" ").append(operator).append(" ");
                }
            }
        }
        if (limit != -1) {
            query.append(" LIMIT ").append(limit);
        }

        if (offset != -1) {
            query.append(" OFFSET ").append(offset);
        }

        try {
            PreparedStatement statement = Connection.getPreparedStatement(query.toString());
            if (fields != null && values != null) {
                for (int i = 0; i < fields.length; i++) {
                    statement.setObject(i + 1, values[i]);
                }
            }
            ResultSet resultSet = statement.executeQuery();
            return TableUtils.fromResultSetArray(type, resultSet);
        } catch (SQLException e) {
            System.out.println("Error while preparing statement query: " + query);
            e.printStackTrace();
            return null;
        }
    }


    public boolean save(T t) {
        boolean isUpdate = TableUtils.getPrimaryKeyValue(t) != null;
        return isUpdate ? update(t) : insert(t);
    }

    public boolean insert(T t) {
        StringBuilder query = new StringBuilder("INSERT INTO " + tableName + " (");
        StringBuilder values = new StringBuilder("VALUES (");
        Field[] columns = TableUtils.getColumns(type);
        for (int i = 0; i < columns.length; i++) {
            Field field = columns[i];
            query.append(field.getName());
            values.append("?");
            if (i < columns.length - 1) {
                query.append(", ");
                values.append(", ");
            }
        }
        query.append(") ").append(values).append(")").append(" RETURNING *");

        try {
            PreparedStatement statement = Connection.getPreparedStatement(query.toString());
            for (int i = 0; i < columns.length; i++) {
                Field column = columns[i];
                Object value = column.get(t);
                statement.setObject(i + 1, value);
            }
            ResultSet resultSet = statement.executeQuery();
            T result = TableUtils.fromResultSet(type, resultSet);
            Helper.copyProperties(result, t);
            return true;
        } catch (SQLException | IllegalAccessException e) {
            System.out.println("Error while executing statement query: " + query);
            e.printStackTrace();
            return false;
        }
    }

    public boolean update(T t) {
        StringBuilder query = new StringBuilder("UPDATE " + tableName + " SET ");
        Field[] columns = TableUtils.getColumns(type);
        for (int i = 0; i < columns.length; i++) {
            Field field = columns[i];
            query.append(field.getName()).append(" = ?");
            if (i < columns.length - 1) {
                query.append(", ");
            }
        }
        query.append(" WHERE ").append(primaryKeyField).append(" = ?").append(" RETURNING *");

        try {
            PreparedStatement statement = Connection.getPreparedStatement(query.toString());
            for (int i = 0; i < columns.length; i++) {
                Field column = columns[i];
                Object value = column.get(t);
                statement.setObject(i + 1, value);
            }
            statement.setObject(columns.length + 1, TableUtils.getPrimaryKeyValue(t));
            ResultSet resultSet = statement.executeQuery();
            T result = TableUtils.fromResultSet(type, resultSet);
            Helper.copyProperties(result, t);
            return true;
        } catch (SQLException | IllegalAccessException e) {
            System.out.println("Error while executing statement query: " + query);
            e.printStackTrace();
            return false;
        }
    }


}
