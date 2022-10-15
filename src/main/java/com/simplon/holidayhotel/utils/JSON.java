package com.simplon.holidayhotel.utils;

import com.google.gson.Gson;
import com.simplon.holidayhotel.annotation.JSONField;

import java.lang.reflect.Field;
import java.util.ArrayList;

public class JSON {
    private static Gson gson;

    private static Gson getGson() {
        if (gson == null) {
            gson = new Gson();
        }
        return gson;
    }

    public static <T> String fromObject(T object) {
        Class<?> aClass = object.getClass();
        Field[] fields = getJSONFields(aClass);
        if (fields.length == 0) {
            return "";
        }
        StringBuilder json = new StringBuilder("{");
        for (Field field : fields) {
            try {
                field.setAccessible(true);
                Object value = field.get(object);
                String name = field.getName();
                JSONField jsonField = field.getAnnotation(JSONField.class);
                if (!jsonField.name().isEmpty()) {
                    name = jsonField.name();
                }

                Class<?> valueClass = value == null ? null : value.getClass();
                if ((valueClass != null) && (valueClass.getPackage() != null) && valueClass.getPackage()
                                                                                           .getName()
                                                                                           .startsWith("com.simplon.holidayhotel")) {
                    value = fromObject(value);
                } else if (value instanceof String) {
                    value = String.format("\"%s\"", value);
                } else if (valueClass != null && valueClass.isArray()) {
                    value = getGson().toJson(value);
                }
                if (value == null || value.equals("")) continue;
                json.append("\"").append(name).append("\":");
                json.append(value);
                json.append(",");
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
        json.deleteCharAt(json.length() - 1);
        json.append("}");
        return json.toString();
    }

    public static <T> String fromArray(T[] objects) {
        if (objects == null || objects.length == 0) return "[]";
        StringBuilder json = new StringBuilder("[");
        for (T object : objects) {
            json.append(fromObject(object)).append(",");
        }
        json.deleteCharAt(json.length() - 1);
        json.append("]");
        return json.toString();
    }

    public static <T> Field[] getJSONFields(Class<T> clazz) {
        Field[] fields = clazz.getDeclaredFields();
        ArrayList<Field> jsonFields = new ArrayList<>();
        for (Field field : fields) {
            if (field.isAnnotationPresent(JSONField.class)) {
                jsonFields.add(field);
            }
        }
        return jsonFields.toArray(new Field[0]);
    }
}
