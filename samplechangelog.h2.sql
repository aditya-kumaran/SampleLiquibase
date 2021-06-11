--liquibase formatted sql

--changeset your.name:1
create table person (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset your.name:2
create table company (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset other.dev:3
alter table person add column country varchar(2)

--changeset your.name:4
alter table person add worksfor_company_id int;

--changeset your.name:5
alter table person add constraint fk_person_worksfor foreign key (worksfor_company_id) references company(id);