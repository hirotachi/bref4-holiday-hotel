/* create fake data for users */
insert into users (name,password,email,role) values('admin','admin','admin@localhost',2);
insert into users (name,password,email,role) values('user','user','user@localhost',1);
insert into users (name,password,email,role) values('guest','guest','guest@localhost',1);
insert into users (name,password,email,role) values('test','test','test@localhost',1);
insert into users (name,password,email,role) values('test2','test2','test2@localhost',1);
insert into users (name,password,email,role) values('test3','test3','test3@localhost',1);
/* end fake users */

/* create fake data for rooms */
insert into rooms(type,price,images,manager_id) values (1,100,'{s1.jpg,s2.jpg,s3.jpg,s4,jpg,s5.jpg,s6.jpg}', (select id from users where name='admin'));
insert into rooms(type,price,images,manager_id) values (2,200,'{s1.jpg,s2.jpg,s3.jpg,s4,jpg,s5.jpg,s6.jpg}',(select id from users where name='admin'));
insert into rooms(type,price,images,manager_id) values (3,300,'{s1.jpg,s2.jpg,s3.jpg,s4,jpg,s5.jpg,s6.jpg}',(select id from users where name='admin'));
insert into rooms(type,price,images,manager_id) values (4,400,'{s1.jpg,s2.jpg,s3.jpg,s4,jpg,s5.jpg,s6.jpg}',(select id from users where name='admin'));

/* end fake rooms */



