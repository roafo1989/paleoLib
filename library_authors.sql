create table authors
(
    id        int(10) auto_increment
        primary key,
    firstname varchar(30) charset utf8 not null,
    lastname  varchar(30) charset utf8 null,
    surname   varchar(30) charset utf8 null
);

INSERT INTO library.authors (id, firstname, lastname, surname) VALUES (3, 'Стив', 'Брюсат', '');
INSERT INTO library.authors (id, firstname, lastname, surname) VALUES (4, 'Андрей', 'Журавлёв', 'Юрьевич');
INSERT INTO library.authors (id, firstname, lastname, surname) VALUES (5, 'Кирилл', 'Еськов', 'Юрьевич');
INSERT INTO library.authors (id, firstname, lastname, surname) VALUES (6, 'Крис', 'Тёрни', null);
INSERT INTO library.authors (id, firstname, lastname, surname) VALUES (7, 'Дугал', 'Диксон', null);
INSERT INTO library.authors (id, firstname, lastname, surname) VALUES (8, 'Карл', 'Циммер', null);
INSERT INTO library.authors (id, firstname, lastname, surname) VALUES (9, 'Чарльз', 'Дарвин', null);
INSERT INTO library.authors (id, firstname, lastname, surname) VALUES (12, 'Нил', 'Шубин', '');
create table books
(
    id           int(10) auto_increment
        primary key,
    title        varchar(100) charset utf8 not null,
    author       varchar(30) charset utf8  null,
    year         int(4)                    null,
    qtyOfPages   int(4)                    null,
    publisher_id int(10)                   null,
    constraint books_title_uindex
        unique (title),
    constraint books_publishers_id_fk
        foreign key (publisher_id) references publishers (id)
            on update cascade on delete cascade
);

INSERT INTO library.books (id, title, author, year, qtyOfPages, publisher_id) VALUES (2, 'хроники тираннозавра', 'Дэвид Хоун', 2017, 359, 1);
INSERT INTO library.books (id, title, author, year, qtyOfPages, publisher_id) VALUES (3, 'удивительная палеонтология', 'Кирилл Еськов', 2017, 320, 8);
INSERT INTO library.books (id, title, author, year, qtyOfPages, publisher_id) VALUES (4, 'сотворение земли', 'Андрей Журавлёв', 2019, 514, 1);
INSERT INTO library.books (id, title, author, year, qtyOfPages, publisher_id) VALUES (7, 'время динозавров', 'Стив Брюсатти', 2019, 358, 1);
INSERT INTO library.books (id, title, author, year, qtyOfPages, publisher_id) VALUES (8, 'динозавры: 150 млн лет господства', 'Даррен Нэйш', 2018, 290, 1);
INSERT INTO library.books (id, title, author, year, qtyOfPages, publisher_id) VALUES (9, 'летающие жирафы, мамонты...', 'Андрей Журавлёв', 2017, 350, 9);
INSERT INTO library.books (id, title, author, year, qtyOfPages, publisher_id) VALUES (10, 'отпечатки жизни', 'Дональд Протеро', 2018, 380, 2);
create table callnames
(
    id               int(4) auto_increment
        primary key,
    firstname        varchar(60) charset utf8 null,
    lastname         varchar(30) charset utf8 null,
    surname          varchar(30) charset utf8 null,
    id_original_name int(4)                   null
);

INSERT INTO library.callnames (id, firstname, lastname, surname, id_original_name) VALUES (1, 'Андрей', 'Журавлёв', 'Юрьевич', 4);
INSERT INTO library.callnames (id, firstname, lastname, surname, id_original_name) VALUES (2, 'Стив', 'Брусатти', null, 3);
INSERT INTO library.callnames (id, firstname, lastname, surname, id_original_name) VALUES (3, 'Стив', 'Брюсатти', null, 3);
INSERT INTO library.callnames (id, firstname, lastname, surname, id_original_name) VALUES (4, 'Стив', 'Брюсатт', null, 3);
create table publishers
(
    id   int(10) auto_increment
        primary key,
    name varchar(30) charset utf8 null
);

INSERT INTO library.publishers (id, name) VALUES (1, 'Альпина нон-фикшн');
INSERT INTO library.publishers (id, name) VALUES (2, 'Питер');
INSERT INTO library.publishers (id, name) VALUES (3, 'Манн, Иванов, Фербер');
INSERT INTO library.publishers (id, name) VALUES (4, 'Дрофа');
INSERT INTO library.publishers (id, name) VALUES (5, 'АСТрелль');
INSERT INTO library.publishers (id, name) VALUES (6, 'Амфора');
INSERT INTO library.publishers (id, name) VALUES (7, 'Слово');
INSERT INTO library.publishers (id, name) VALUES (8, 'Энас-книга');
INSERT INTO library.publishers (id, name) VALUES (9, 'Ломоносов');
INSERT INTO library.publishers (id, name) VALUES (12, 'Перископ');