INSERT INTO botc.users (id, chat_id, full_name, address, lang, isnot, isadmin, steep) VALUES (5, '1626550887', 'O''tkir', 'Surxondaryo viloyati', 'lotin', null, 1, 1);
INSERT INTO botc.users (id, chat_id, full_name, address, lang, isnot, isadmin, steep) VALUES (6, '462199401', 'Jonibek', null, 'kiril', null, 1, 1);


INSERT INTO botc.address (id, namel, namek) VALUES (1, 'Toshkent Shahar', 'Тошкент Шаҳар');
INSERT INTO botc.address (id, namel, namek) VALUES (2, 'Buxoro viloyati', 'Бухоро вилояти');
INSERT INTO botc.address (id, namel, namek) VALUES (3, 'Samarqand viloyati', 'Самарқанд вилояти');
INSERT INTO botc.address (id, namel, namek) VALUES (4, 'Andijon viloyati', 'Андижон вилояти');
INSERT INTO botc.address (id, namel, namek) VALUES (5, 'Farg''ona viloyati', 'Фарғона вилояти');
INSERT INTO botc.address (id, namel, namek) VALUES (6, 'Jizzax viloyati', 'Жиззах вилояти');
INSERT INTO botc.address (id, namel, namek) VALUES (7, 'Xorazm viloyati', 'Хоразм вилояти');
INSERT INTO botc.address (id, namel, namek) VALUES (8, 'Namangan viloyati', 'Наманган вилояти');
INSERT INTO botc.address (id, namel, namek) VALUES (9, 'Navoiy viloyati', 'Навоий вилояти');
INSERT INTO botc.address (id, namel, namek) VALUES (10, 'Qashqadaryo viloyati', 'Қашқадарё вилояти');
INSERT INTO botc.address (id, namel, namek) VALUES (11, 'Sirdaryo viloyati', 'Сирдарё вилояти');
INSERT INTO botc.address (id, namel, namek) VALUES (12, 'Surxondaryo viloyati', 'Сурхондарё вилояти');
INSERT INTO botc.address (id, namel, namek) VALUES (13, 'Qoraqalpog''iston Respublikasi	', 'Қорақалпоғистон Республикаси');
INSERT INTO botc.address (id, namel, namek) VALUES (14, 'Toshkent viloyati', 'Тошкент вилояти');


-- auto-generated definition
create table address
(
    id    int auto_increment
        primary key,
    namel char(200) null,
    namek char(200) null
);



-- auto-generated definition
create table users
(
    id        int auto_increment
        primary key,
    chat_id   char(100)     null,
    full_name char(100)     null,
    address   char(100)     null,
    lang      char(20)      null,
    isnot     int           null,
    isadmin   int default 1 null,
    steep     int default 0 null,
    constraint chat_id
        unique (chat_id)
);

