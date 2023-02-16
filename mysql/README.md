* Create database:

CREATE DATABASE administracion;

* Create user:

CREATE USER 'demo'@'192.168.15.23' IDENTIFIED BY 'passT0db';

* Set privileges

GRANT SELECT, UPDATE ON administracion.* TO 'demo'@'192.168.15.23';
