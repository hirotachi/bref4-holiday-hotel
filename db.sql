create table "user"
(
    id       serial
        constraint user_pk
            primary key,
    username varchar(50)  not null,
    password varchar(250) not null,
    email    varchar(50)  not null
);



create table room
(
    id     integer default nextval('"room_roomId_seq"'::regclass) not null
        constraint room_pk
            primary key,
    type   roomtype                                               not null,
    price  integer                                                not null,
    images character varying[]                                    not null
);



create table promotion
(
    id          serial
        constraint promotion_pk
            primary key,
    name        varchar(50)      not null,
    pourcentage double precision not null
);



create table reservation
(
    id          serial
        constraint reservation_pk
            primary key,
    "startDate" date    not null,
    "endDate"   date    not null,
    total       integer not null,
    id_user     integer not null
        constraint reservation_user_null_fk
            references "user"
            on update cascade on delete cascade,
    id_room     integer not null
        constraint reservation_room_null_fk
            references room
);



create table extra
(
    id    serial
        constraint extra_pk
            primary key,
    name  varchar(50) not null,
    price integer     not null
);
