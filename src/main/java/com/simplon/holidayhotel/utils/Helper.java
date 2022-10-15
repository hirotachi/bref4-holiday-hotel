package com.simplon.holidayhotel.utils;

public class Helper {
    public static <T> boolean copyProperties(T source, T target) {
        try {
            for (java.lang.reflect.Field field : source.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                Object value = field.get(source);
                field.set(target, value);
                field.setAccessible(false);
            }
            return true;
        } catch (Exception e) {
            System.out.println("Error while copying properties");
            e.printStackTrace();
            return false;
        }
    }

    public static <T> void copyNonEmptyProperties(T source, T target) {
        try {
            for (java.lang.reflect.Field field : source.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                Object value = field.get(source);
                if (value != null && !value.toString().isEmpty() && !value.toString().equals("0") && !value.toString()
                                                                                                           .equals("0.0")) {
                    field.set(target, value);
                }
                field.setAccessible(false);
            }
        } catch (Exception e) {
            System.out.println("Error while copying properties");
            e.printStackTrace();
        }

    }
}
