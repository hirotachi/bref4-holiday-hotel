create table "user"
(
    id     serial  primary key not null,
    username varchar(50)  not null,
    password varchar(250) not null,
    email    varchar(50)  not null
);



create table room
(
    id     serial  primary key,
    type   roomtype                                               not null,
    price  integer                                                not null,
    images character varying[]                                    not null
);



create table promotion
(
    id  serial primary key,
    name        varchar(50)      not null,
    pourcentage double precision not null
);



create table reservation
(
    id     serial primary key,
    "startDate" date    not null,
    "endDate"   date    not null,
    total       integer not null,
    user_id     integer not null  references "user"  on update cascade on delete cascade,
    room_id     integer not null references room
);



create table extra
(
    id    serial primary key,
    name  varchar(50) not null,
    price integer     not null
);
