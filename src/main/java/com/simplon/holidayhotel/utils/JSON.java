package com.simplon.holidayhotel.utils;

import com.google.gson.Gson;

import java.io.BufferedReader;

public class JSON {
    private static Gson gson;

    private static Gson getGson() {
        if (gson == null) {
            gson = new Gson();
        }
        return gson;
    }


    public static <T> String stringify(T data) {
        return getGson().toJson(data);
    }

    public static <T> T parse(String json, Class<T> type) {
        return getGson().fromJson(json, type);
    }

    public static <T> T parse(BufferedReader reader, Class<T> clazz) {
        return getGson().fromJson(reader, clazz);
    }
}
