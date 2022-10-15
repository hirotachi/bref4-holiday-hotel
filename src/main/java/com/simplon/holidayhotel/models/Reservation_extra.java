package com.simplon.holidayhotel.models;

//create table reservation_extras (
//    reservation_id integer not null references reservations on update cascade on delete cascade,
//    extra_id       integer not null references extra on update cascade on delete cascade,
//    primary key (reservation_id, extra_id)
//);

import com.simplon.holidayhotel.annotation.Column;
import com.simplon.holidayhotel.annotation.Table;

@Table(tableName = "reservation_extras")
public class Reservation_extra {
    @Column
    protected int reservation_id;
    @Column
    protected int extra_id;

    public Reservation_extra(int reservation_id, int extra_id) {
        this.reservation_id = reservation_id;
        this.extra_id = extra_id;
    }

    Reservation_extra() {
    }
}
