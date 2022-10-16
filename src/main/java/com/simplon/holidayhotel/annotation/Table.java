package com.simplon.holidayhotel.annotation;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface Table {
    String tableName();

    String primaryKey() default "id";

}
