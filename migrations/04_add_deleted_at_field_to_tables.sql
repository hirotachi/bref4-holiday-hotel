alter table reservations
add column deleted_at timestamp;
alter table rooms
add column deleted_at timestamp;
alter table users
add column deleted_at timestamp;
alter table promotions
add column deleted_at timestamp;
alter table extras
add column deleted_at timestamp;
alter table reservations_extras
add column deleted_at timestamp;