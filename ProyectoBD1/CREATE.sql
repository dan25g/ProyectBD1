create database Hipodromo;

CREATE TABLE color (
    col_id numeric(10,0),
    col_nombre varchar(20) not null unique,
    constraint pk_color primary key(col_id)
);

CREATE TABLE gorra (
    gorr_id numeric(10,0),
    gorr_nombre varchar(20) not null,
    gorr_disenno varchar(20),
    gorr_logo varchar(20),
    gorr_descripcion varchar(80) not null,
    constraint pk_gorra primary key(gorr_id)
);

CREATE TABLE chaquetilla (
    chaq_id numeric(10,0),
    chaq_nombre varchar(20),
    chaq_logo varchar(20),
    chaq_disenno varchar(20),
    chaq_descripcion varchar(80),
    constraint pk_chaq primary key(chaq_id)
);

CREATE TABLE lugar (
    l_id numeric(10,0),
    l_nombre varchar(20) not null,
    l_tipo varchar(20) not null,
    l_cod_postal numeric(10,0),
    l_descripcion varchar(30) not null,
    fk_lugar numeric(10,0),
    constraint pk_lugar primary key(l_id),
    constraint fk_lugar primary key(fk_lugar)
);

