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
