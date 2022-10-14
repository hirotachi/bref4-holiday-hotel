create table users
(
    id       serial primary key not null,
    name     varchar(255)       not null,
    password varchar(255)       not null,
    email    varchar(255)       not null,
    role     integer default 1  not null
);



create table rooms
(
    id     serial primary key,
    type   integer not null,
    price  double  not null,
    images text[] not null,
    manager_id integer not null references "users" (id),
);



create table promotions
(
    id          serial primary key,
    name        varchar(50)      not null,
    percentage double not null,
    room_type      integer[] not null,
);



create table reservations
(
    id          serial primary key,
    startDate date    not null,
    endDate   date    not null,
    total       integer not null,
    user_id     integer not null references users on update cascade on delete cascade,
    room_id     integer not null references rooms on update cascade on delete cascade,
    promotion_id integer references promotions on update cascade on delete cascade,
);



create table extra
(
    id    serial primary key,
    name  varchar(255) not null,
    price integer     not null
);

create table reservation_extra
(
    reservation_id integer not null references reservations on update cascade on delete cascade,
    extra_id       integer not null references extra on update cascade on delete cascade,
    primary key (reservation_id, extra_id)
);

