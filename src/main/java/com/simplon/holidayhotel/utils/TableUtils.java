package com.simplon.holidayhotel.utils;

import com.simplon.holidayhotel.annotation.Column;
import com.simplon.holidayhotel.annotation.Table;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TableUtils {

    public static <T> T fromResultSet(Class<T> type, ResultSet resultSet) {
        try {
            if (resultSet == null || !resultSet.next()) {
                return null;
            }
            T t = type.getConstructor().newInstance();
            Field[] fields = t.getClass().getDeclaredFields();
            for (Field field : fields) {
                Column column = field.getAnnotation(Column.class);
                if (column == null) continue;

                field.setAccessible(true);
                field.set(t, resultSet.getObject(field.getName()));
                field.setAccessible(false);
            }
            return t;

        } catch (NoSuchMethodException | InstantiationException | IllegalAccessException | InvocationTargetException |
                 SQLException e) {
            if (e instanceof SQLException) {
                System.out.println("Error while creating instance from result set");
            } else {
                System.out.println("Error while creating instance of " + type.getName());
            }
            e.printStackTrace();
            return null;
        }
    }

    public static <T> T[] fromResultSetArray(Class<T> type, ResultSet resultSet) {
        int size = 0;
        try {
            if (resultSet == null || !resultSet.next()) {
                return null;
            }
            resultSet.last();
            size = resultSet.getRow();
            resultSet.beforeFirst();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        ArrayList<T> array = new ArrayList<>();
        for (int i = 0; i < size; i++) {
            array.add(fromResultSet(type, resultSet));
        }
        return array.toArray((T[]) Array.newInstance(type, size));
    }


    public static <T> String getPrimaryKeyField(Class<T> type) {
        return type.getAnnotation(Table.class).primaryKey();
    }

    public static <T> Object getPrimaryKeyValue(T t) {
        Object primaryKeyValue;
        Class<T> type = (Class<T>) t.getClass();
        String primaryKeyField = getPrimaryKeyField(type);

        Field field;
        try {
            field = type.getDeclaredField(primaryKeyField);
        } catch (NoSuchFieldException e) {
            System.out.println("Error while getting primary key field " + primaryKeyField + " from class " + type.getName());
            e.printStackTrace();
            return null;
        }

        field.setAccessible(true);
        try {
            primaryKeyValue = field.get(t);
        } catch (IllegalAccessException e) {
            System.out.println("Error while getting primary key value from field " + primaryKeyField + " from class " + type.getName());
            e.printStackTrace();
            return false;
        }
        field.setAccessible(false);
        if (primaryKeyValue == null || primaryKeyValue.equals(-1) || primaryKeyValue.equals(0) | primaryKeyValue.equals("")) {
            return null;
        }
        return primaryKeyValue;
    }

    public static <T> Field[] getColumns(Class<T> type) {
        Field[] fields = type.getDeclaredFields();
        ArrayList<Field> columns = new ArrayList<>();
        for (Field field : fields) {
            if (field.getAnnotation(Column.class) == null || field.getName().equals(getPrimaryKeyField(type))) {
                continue;
            }
            columns.add(field);

        }
        return columns.toArray(new Field[0]);
    }
}
