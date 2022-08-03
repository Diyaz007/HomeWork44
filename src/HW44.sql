create table study.visitors
(
    fullname varchar,
    id serial not null,
    "dateOfBirth" TIMESTAMP,
    gender varchar
);
create unique index visitors_id_uindex
   on study.visitors (id);
alter table study.visitors
    add constraint visitors_pk
        primary key (id);
-----
create table study.visits
(
    id serial not null
        constraint visits_products_id_fk
            references study.visitors,
    column_2 int,
    visitor_id int,
    date timestamp,
    trainer varchar
);
create unique index visits_id_uindex
   on study.visits (id);
alter table study.visits
    add constraint visits_pk
        primary key (id);
----
insert into study.visitors (fullname,id, dateOfBirth, gender)
    value('TDA', 1, '18.08.2007 00:00:00.000000', 'dddd' )
