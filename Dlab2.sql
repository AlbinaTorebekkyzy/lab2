CREATE DATABASE lab2;
CREATE TABLE countries(
COUNTRY_ID serial  primary key,
COUNTRY_NAME varchar(30),
REGION_ID INTEGER,
POPULATION INTEGER
);


INSERT INTO countries values ('A397364','Latvia', 876564.0);

INSERT INTO countries (country_id,country_name) VALUES('A3436884','Uzbekistan');

INSERT INTO countries (country_id,country_name,region_id) VALUES('C764339','Russia',NULL);

INSERT INTO countries VALUES('B9301','CHINA',1891),
('C0034','KOREA',3237),('C0032','UK',1343);

ALTER TABLE countries ALTER COUNTRY_NAME SET DEFAULT 'Kazakhstan';

INSERT into countries(COUNTRY_NAME) VALUES(DEFAULT);

INSERT into countries values(default);


CREATE TABLE if not exists countries_new
 as select *from  countries;

INSERT INTO countries_new
SELECT * FROM countries;


update countries
set REGION_ID = 1
where REGION_ID is null;

update countries
set population=population+(population*10/100.0)
where POPULATION=(population);

DELETE from countries
where population<100000;


delete from countries_new
where COUNTRY_ID='C0034';


DELETE FROM countries
where countries;


SELECT *FROM countries;

SELECT *FROM countries_new;
