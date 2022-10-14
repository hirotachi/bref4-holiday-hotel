package com.simplon.holidayhotel.config;

import io.github.cdimascio.dotenv.Dotenv;

import java.util.Map;

public class Configuration {
    private static Dotenv load;
    public static String getConfig(String key){
//         load env variables from .env file
        if(load == null){
            load = Dotenv.configure().ignoreIfMissing().load();
        }
        return load.get(key);
    }
}
