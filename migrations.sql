
psql

CREATE DATABASE bikeracks;

\c bikeracks

CREATE TABLE subscribers(id SERIAL PRIMARY KEY, first_name VARCHAR(255), last_name VARCHAR(255), username VARCHAR(255), email VARCHAR(255), updates BOOLEAN DEFAULT FALSE, surveys BOOLEAN DEFAULT FALSE);
