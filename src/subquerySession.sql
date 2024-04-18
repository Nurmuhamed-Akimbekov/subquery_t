create type gender as enum ('Male','Female');
create type specialization
as enum ('DERMOTOLOGIST','CARDIOLOGIST','ALLERGIST','ORTOPEDIST','PSYCHIATRIST');

create table doctors
(
    id             serial primary key,
    first_name     varchar(50),
    last_name      varchar(50),
    experience     int,
    email          varchar(50),
    gender         gender,
    specialization specialization,
    department_id  int references departments (id)
);
create table departments
(
    id              serial primary key,
    department_name varchar(50),
    hospital_id     int references hospitals (id)
);
create table patients
(
    id           serial primary key,
    first_name   varchar(50),
    last_name    varchar(50),
    phone_number numeric,
    email        varchar(50),
    gender       gender,
    hospital_id  int references hospitals (id),
    doctor_id    int references doctors (id)
);
create table hospitals
(
    id            serial primary key,
    hospital_name varchar(50),
    address       varchar(50)
);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (1, 'Dulcy', 'Jerson', 'djerson0@amazon.com', 1, 'Female', 'DERMOTOLOGIST', 1);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (2, 'Conrado', 'Placide', 'cplacide1@friendfeed.com', 2, 'Male', 'ALLERGIST', 2);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (3, 'Durand', 'Dreghorn', 'ddreghorn2@utexas.edu', 3, 'Male', 'CARDIOLOGIST', 6);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (4, 'Miller', 'Caddies', 'mcaddies3@barnesandnoble.com', 4, 'Male', 'DERMOTOLOGIST', 4);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (5, 'Trevor', 'Avon', 'tavon4@arizona.edu', 5, 'Male', 'ORTOPEDIST', 4);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (6, 'Marvin', 'Crix', 'mcrix5@bloomberg.com', 6, 'Male', 'CARDIOLOGIST', 5);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (7, 'Vail', 'Baily', 'vbaily6@symantec.com', 7, 'Male', 'ALLERGIST', 4);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (8, 'Yvette', 'Van Der Weedenburg', 'yvanderweedenburg7@ucsd.edu', 8, 'Female', 'PSYCHIATRIST', 5);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (9, 'Mil', 'Gwillim', 'mgwillim8@nba.com', 4, 'Female', 'ORTOPEDIST', 2);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (10, 'Angy', 'Minor', 'aminor9@auda.org.au', 10, 'Female', 'DERMOTOLOGIST', 5);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (11, 'Cassey', 'De la Barre', 'cdelabarrea@biblegateway.com', 5, 'Female', 'ALLERGIST', 7);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (12, 'Gaultiero', 'Goldie', 'ggoldieb@howstuffworks.com', 12, 'Male', 'CARDIOLOGIST', 6);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (13, 'Susannah', 'Ryce', 'srycec@foxnews.com', 15, 'Female', 'PSYCHIATRIST', 8);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (14, 'Eustacia', 'Caghy', 'ecaghyd@liveinternet.ru', 10, 'Female', 'DERMOTOLOGIST', 9);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (15, 'Kariotta', 'Ferrettini', 'kferrettinie@phoca.cz', 15, 'Female', 'PSYCHIATRIST', 8);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (1, 'Lea', 'Witch', 'lwitch0@printfriendly.com', 7034943573, 'Female', 1, 3);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (2, 'Saraann', 'Seleway', 'sseleway1@discuz.net', 7042731563, 'Female', 1, 2);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (3, 'Thaxter', 'Bartley', 'tbartley2@reference.com', 5029541489, 'Male', 1, 3);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (4, 'Evvy', 'Mintoff', 'emintoff3@house.gov', 5047624512, 'Female', 1, 4);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (5, 'Fonsie', 'Fairholm', 'ffairholm4@dedecms.com', 5038828192, 'Male', 1, 5);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (6, 'Arda', 'Canadine', 'acanadine5@howstuffworks.com', 7069307149, 'Female', 1, 5);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (7, 'Elvira', 'Churchlow', 'echurchlow6@weebly.com', 7054337678, 'Female', 1, 3);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (8, 'Marty', 'Targetter', 'mtargetter7@vinaora.com', 5042600657, 'Male', 1, 2);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (9, 'Thaddeus', 'Scotts', 'tscotts8@chronoengine.com', 7054131954, 'Male', 1, 7);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (10, 'Freddy', 'Skilbeck', 'fskilbeck9@archive.org', 5057985117, 'Male', 1, 5);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (11, 'Kenn', 'Leif', 'kleifa@bloglovin.com', 7094159807, 'Male', 1, 6);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (12, 'Abdel', 'Lethebridge', 'alethebridgeb@wired.com', 7095010261, 'Male', 1, 8);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (13, 'Brandon', 'Jeaycock', 'bjeaycockc@booking.com', 5055207270, 'Male', 1, 4);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (14, 'Brew', 'Wloch', 'bwlochd@delicious.com', 7094319667, 'Male', 1, 2);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (15, 'Sonny', 'Labusch', 'slabusche@flickr.com', 5009884214, 'Female', 1, 8);
insert into hospitals (id, hospital_name, address)
values (1, 'Red Centre', '10548 Reindahl Circle');
insert into departments (id, department_name, hospital_id)
values (1, 'Neurology', 1);
insert into departments (id, department_name, hospital_id)
values (2, 'Oncology', 1);
insert into departments (id, department_name, hospital_id)
values (3, 'Cardiology', 1);
insert into departments (id, department_name, hospital_id)
values (4, 'Emergency Health', 1);
insert into departments (id, department_name, hospital_id)
values (5, 'Anesthesiology', 1);
insert into departments (id, department_name, hospital_id)
values (6, 'Surgical', 1);
insert into departments (id, department_name, hospital_id)
values (7, 'Pediatric', 1);
insert into departments (id, department_name, hospital_id)
values (8, 'Psychical', 1);
insert into departments (id, department_name, hospital_id)
values (9, 'Intensive', 1);
insert into departments (id, department_name, hospital_id)
values (10, 'Nursery', 1);


--1 Найти всех пациентов, которые лечатся в отделении 'Surgical’
select *
from patients
where doctor_id in (select d.id
                    from doctors d
                    where department_id in (select id
                                            from departments
                                            where department_name = 'Surgical'));
--2 Получить список всех отделений, где работает врач с именем 'John’
select *
from departments
where id in (select id from doctors where first_name = 'Miller');
--3 Найти всех пациентов, у которых врач имеет стаж более 10 лет
select *
from patients p
where p.doctor_id in (select id from doctors d where d.experience > 10);
--4 Получить список всех врачей и количество пациентов, которых они обслуживают
select d.id, d.first_name, count(p.id)
from doctors d
         left join patients p on d.id = p.doctor_id
group by d.first_name, d.id
order by d.id;
--5 Получить список всех пациентов, которые не обслуживаются ни у одного врача
select *
from patients
where doctor_id is null;
--6 Получить список всех врачей, которые не обслуживают ни одного пациента
select *
from doctors d
where id not in (select id from patients);
select *
from doctors d
         join patients p on d.id = p.doctor_id
where p.id is null;
--Получить список всех врачей, которые лечат пациентов старше 60 лет
--
--8 Найти всех пациентов, которые лечатся у врача с именем 'Anna' и фамилией 'Smith’
select *
from patients p
where p.doctor_id in (select id from doctors d where d.first_name = 'Conrado' and d.last_name = 'Placide');

select d.first_name, count(p.id)
from patients p
         inner join doctors d on d.id = p.doctor_id
where d.first_name in ('Angy', 'Conrado')
group by d.first_name;
--9 Получить список всех врачей, работающих в отделении 'Intensive' и обслуживающих больше 3 пациентов
select *
from doctors d
         join departments d2 on d2.id = d.department_id
         join (select doctor_id, count(*) from patients p having count(*) > 2) p on d.id = p.doctor_id
where d2.department_name = 'Intensive';

--10 Получить список всех отделений, в которых пациенты лечатся у врачей с опытом менее 5 лет
select *
from departments
where id in (select doctors.department_id from doctors where experience < 5);
--11 Найти всех пациентов, у которых врач имеет специализацию 'DERMOTOLOGIST’
select *
from patients
where patients.doctor_id in (select id from doctors where specialization = 'DERMOTOLOGIST');
--12 Получить количество врачей для каждой специализации
select doctors.specialization, count(*)
from doctors
group by specialization
order by count(*) desc;
--13 Найти всех пациентов, обслуживаемых врачами с наименее распространенной специализацией
select *
from patients p
where doctor_id in (select id
                    from doctors
                    where specialization in
                          (select specialization from doctors group by specialization order by count(*) limit 1));
--14 Найти всех пациентов, обслуживаемых врачами с специализацией ‘CARDIOLOGIST’
select *
from patients p
where p.doctor_id in (select id from doctors where specialization = 'CARDIOLOGIST');
--15 Получить список всех врачей, работающих в отделении 'Neurology' и обслуживающих больше 3 пациентов
SELECT *
FROM doctors
WHERE department_id = (SELECT id
                       FROM departments
                       WHERE department_name = 'Neurology')
  AND id IN (SELECT doctor_id
             FROM patients
             GROUP BY doctor_id
             HAVING COUNT(*) > 3);

select *
from doctors
where department_id = (select id
                       from departments
                       where department_name = 'Surgical')
  and id in (select doctor_id
             from patients
             group by doctor_id
             having count(*) > 1);