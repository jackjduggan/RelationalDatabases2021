drop table if exists members;
create table members
(membership_id int(8) primary key auto_increment,
member_name varchar(20),
member_dob date,
member_address varchar(50),
member_contact_num varchar(10),
member_email varchar(20),
tickets_purchased int(3)
);

drop table if exists tickets;
create table tickets
(ticket_number int(10) primary key auto_increment,
ticket_date date,
ticket_opposition varchar(20),
ticket_location varchar(20),
ticket_block varchar(2),
ticket_row varchar(1),
ticket_seat_number int(2)
);

drop table if exists matches;
create table matches
(match_opposition varchar(20),
match_date date,
match_stadium varchar(20),
match_location varchar(20),
match_tickets_sold int(5),
constraint match_id primary key (match_opposition,match_date)
);

drop table if exists training_sessions;
create table training_sessions
(training_type varchar(10),
training_date date,
training_intensity varchar(1),
training_location varchar(20),
training_is_indoor varchar(1),
constraint training_id primary key (training_type,training_date)
);

drop table if exists employees;
create table employees
(employee_id int(8) primary key auto_increment,
employee_name varchar(20),
employee_dob date,
employee_address varchar(50),
employee_contact_num varchar(10),
employee_email varchar(30)
);

drop table if exists players;
create table players
(employee_id int(8) primary key auto_increment,
player_shirt_number int(2)
);

drop table if exists medical_staff;
create table medical_staff
(employee_id int(8) primary key auto_increment,
medical_specialism varchar(20)
);

drop table if exists coaches;
create table coaches
(employee_id int(8) primary key auto_increment,
coaching_badge varchar(20)
);

drop table if exists other_staff;
create table other_staff
(employee_id int(8) primary key auto_increment,
employee_role varchar(20)
);

drop table if exists wages;
create table wages
(employee_id int(8) primary key auto_increment,
wage_amount int(5),
wage_frequency_paid varchar(1),
wage_bonuses int(5),
is_salary varchar(1)
);


drop table if exists squads;
create table squads
(match_opposition varchar(20),
match_date date,
squad_no_of_players int(2),
squad_captain varchar(20)
);

drop table if exists training_attendances;
create table training_attendances
(player_attendance int(2)
);

drop table if exists coach_attendances;
create table coach_attendances
(coach_attendance int(2)
);

insert into tickets
VALUES
(1234987601, '2021-12-26', 'Manchester United', 'Manchester', 'A2', 'Z', '22');

insert into employees
VALUES
(67492742, 'Mohamed Salah', '1990-12-11', "2 Cairo Avenue, Egypt", 7875689443, 'm.salah123@mail.et'),
(12343478, 'John Doe', '1978-09-21', "65 Cooper's Avenue, Birkenhead", 4564638798, 'johndoe78@outlook.co.uk');

insert into players
VALUES
(31121456, 11),
(32121334, 10),
(32321456, 9),
(65478930, 8);

insert into matches
VALUES
('Manchester United', '2021-12-26', 'Old Trafford', 'Manchester', 6410),
('Everton', '2022-01-02', 'Anfield', 'Liverpool', 60213),
('Manchester City', '2022-01-10', 'Etihad Stadium', 'Manchester', 7023);

insert into members
(membership_id, member_name, member_dob, member_address, member_contact_num, member_email, tickets_purchased)
VALUES
(00000001, 'Jack Duggan', '2001-05-23', "3 John's Lane, Liverpool, England", 0891245432, 'jackduggan@gmail.com', 5),
(02121331, 'James Murphy', '1992-11-08', "3 Church Street, Chester, England", 0321312313, 'jamesmurph@email.com', 23);

insert into wages
VALUES
(42341232, 1200, 'W', 0, 'N');

select * from wages;

insert into coach_attendances VALUES (20);
insert into training_attendances VALUES (34);

select player_attendance, coach_attendance
FROM training_attendances,coach_attendances;

select membership_id, member_name, member_email
from members
where tickets_purchased > 10;

select employee_id, player_shirt_number
from players;

select * from matches
where match_tickets_sold < 10000;

select * from matches
where match_tickets_sold > 7000;

select ticket_block, ticket_row, ticket_seat_number
from tickets
where ticket_number = '1234987601';

select * from matches;

select * from employees;






