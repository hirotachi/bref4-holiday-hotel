package com.simplon.holidayhotel.models;

import com.simplon.holidayhotel.annotation.Table;
import com.simplon.holidayhotel.config.Connection;
import com.simplon.holidayhotel.repositories.Repository;

public class Model extends Connection {

    public String getTableName() {
        Table table = getClass().getAnnotation(Table.class);
        if(table != null) {
            return table.tableName();
        }
        return null;
    }

    public static Repository getRepository(Model instance) {
        return Repository.getRepository(instance.getTableName());
    }


}
