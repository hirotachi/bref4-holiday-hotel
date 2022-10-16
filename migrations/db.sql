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
    price  double precision  not null,
    images text[] not null,
    manager_id integer not null references users (id)
);



create table promotions
(
    id          serial primary key,
    name        varchar(50)      not null,
    percentage double precision not null,
    room_type      integer[] not null
);



create table reservations
(
    id          serial primary key,
    startDate date    not null,
    endDate   date    not null,
    total       integer not null,
    user_id     integer not null references users(id) on update cascade on delete cascade,
    room_id     integer not null references rooms(id) on update cascade on delete cascade,
    promotion_id integer references promotions(id) on update cascade on delete cascade
);



create table extras
(
    id    serial primary key,
    name  varchar(255) not null,
    price integer     not null
);

create table reservations_extras
(
    reservation_id integer not null references reservations(id) on update cascade on delete cascade,
    extra_id       integer not null references extras(id) on update cascade on delete cascade,
    primary key (reservation_id, extra_id)
);
