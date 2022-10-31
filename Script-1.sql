CREATE TABLE "user" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL
);

CREATE TABLE "category" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "post" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar NOT NULL,
  "content" varchar NOT NULL,
  "author_id" int,
  "user_id" int
);

CREATE TABLE "coment" (
  "id" SERIAL PRIMARY KEY,
  "comment" varchar NOT NULL,
  "post_id" int,
  "user_id" int
);

CREATE TABLE "post_category" (
  "id" SERIAL PRIMARY KEY,
  "post_id" int,
  "category_id" int
);

CREATE TABLE "author" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "post" ADD FOREIGN KEY ("author_id") REFERENCES "author" ("id");

ALTER TABLE "post" ADD FOREIGN KEY ("user_id") REFERENCES "user" ("id");

ALTER TABLE "post_category" ADD FOREIGN KEY ("category_id") REFERENCES "category" ("id");

ALTER TABLE "post_category" ADD FOREIGN KEY ("post_id") REFERENCES "post" ("id");

ALTER TABLE "coment" ADD FOREIGN KEY ("post_id") REFERENCES "post" ("id");


insert into category (name) values ('Noticias'), ('Citas'), ('Personal'), ('Comics'), ('Aventuras');
insert into author (name) values ('Nelson Mandela'), ('Steve Jobs'), ('Shigeru Miyamoto'), ('Stan Lee');
insert into "user" (name, email, "password",age) values ('Benjamin', 'benrc84@hotmail.com', '123456',37 ), ('Marguis', 'mar@hotmail.com', '123456',47 );

insert into post (title, "content",user_id) values ('Cumpleaños', 'ya esta cerca mi cumpleaños espero recibir muchos regalos',1);
insert into post (title, "content",author_id ,user_id) values ('Juegos', 'se acerca un increible juego y como diria... que los juegos son malos, lo mismo decian del Rock&Roll',3,3);

insert into coment ("comment",post_id, user_id) values ('Excelente feliz cumpleaños',1,3),('Si yo tambien espero el video juego con muchas ancias',2,1);

insert into post_category (post_id,category_id) values (1,3),(2,4);





