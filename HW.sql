CREATE DATABASE mtuci;
CREATE TABLE cafedr (id SERIAL PRIMARY KEY, cafedr_name varchar NOT NULL UNIQUE, dekanat_name varchar NOT NULL);
INSERT INTO cafedr (cafedr_name, dekanat_name) VALUES ('НТС', 'СиСС');
INSERT INTO cafedr (cafedr_name, dekanat_name) VALUES ('МТС', 'СиСС');
CREATE TABLE student_group (id SERIAL PRIMARY KEY, numb varchar NOT NULL UNIQUE, cafedr varchar REFERENCES cafedr(cafedr_name));
INSERT INTO student_group (numb, cafedr) VALUES ('БИК2201', 'НТС');
INSERT INTO student_group (numb, cafedr) VALUES ('БИК2202', 'НТС');
INSERT INTO student_group (numb, cafedr) VALUES ('БИН2201', 'МТС');
INSERT INTO student_group (numb, cafedr) VALUES ('БИН2202', 'МТС');


CREATE TABLE student (id SERIAL PRIMARY KEY, full_name varchar NOT NULL, passport BIGINT NOT NULL, group_numb varchar REFERENCES student_group(numb), rating SMALLINT NOT NULL);


INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Ерофеев Эмир Данилович', 4483287373, 'БИК2201',780);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Лебедев Роман Кириллович', 4708296892, 'БИК2201',643);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Евдокимов Марат Иванович', 4472808673, 'БИК2201',967);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Соболева Ксения Дмитриевна', 4423690324, 'БИК2201',934);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Киселева Амелия Викторовна', 4023251289, 'БИК2201',513);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Скворцова Софья Георгиевна', 4349200400, 'БИК2202',869);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Воронин Арсений Родионович', 4482113484, 'БИК2202',634);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Воробьев Дмитрий Егорович', 4516890568, 'БИК2202',897);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Сорокин Егор Петрович', 4428713872, 'БИК2202',790);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Федотов Михаил Романович', 4647141676, 'БИК2202',523);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Маслов Тимофей Владимирович', 4059184848, 'БИН2201',926);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Давыдова Алиса Ивановна', 4496897894, 'БИН2201',941);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Малышев Даниил Матвеевич', 4586305758, 'БИН2201',693);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Еремина Ника Максимовна', 4501966310, 'БИН2201',622);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Михайлова Варвара Макаровна', 4520252391, 'БИН2201',1000);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Смирнов Захар Родионович', 4771673062, 'БИН2202',858);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Соболев Леон Алексеевич', 4276611765, 'БИН2202',613);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Сычева Аглая Владимировна', 4787395849, 'БИН2202',625);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Яковлева Ангелина Фёдоровна', 4414376622, 'БИН2202',831);
INSERT INTO student(full_name, passport, group_numb, rating) VALUES('Чернов Александр Миронович', 4150392408, 'БИН2202',587);

SELECT * FROM student WHERE (passport % 2) = 1 and rating > 700;
