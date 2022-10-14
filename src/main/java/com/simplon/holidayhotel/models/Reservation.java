package com.simplon.holidayhotel.models;

//create table reservations (
//    id          serial primary key,
//    startDate date    not null,
//    endDate   date    not null,
//    total       integer not null,
//    user_id     integer not null references users on update cascade on delete cascade,
//    room_id     integer not null references rooms on update cascade on delete cascade,
//    promotion_id integer references promotions on update cascade on delete cascade,
//);

import com.simplon.holidayhotel.annotation.Table;

import java.util.Date;

@Table(tableName = "reservations")
public class Reservation extends Model {
    protected int id;
    protected Date startDate;
    protected Date endDate;
    protected int total;
    protected int user_id;
    protected int room_id;
    protected int promotion_id;

    public Reservation(int id, Date startDate, Date endDate, int total, int user_id, int room_id, int promotion_id) {
        this.id = id;
        this.startDate = startDate;
        this.endDate = endDate;
        this.total = total;
        this.user_id = user_id;
        this.room_id = room_id;
        this.promotion_id = promotion_id;
    }



}
