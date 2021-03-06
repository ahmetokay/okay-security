---DELETE TABLE---
DROP TABLE IF EXISTS "rl_user_role";
DROP TABLE IF EXISTS "rl_role";
DROP TABLE IF EXISTS "rl_user";

---CREATE TABLE---
CREATE TABLE "rl_user" (
	"pkid" serial NOT NULL,
	"name" varchar(50) NOT NULL,
	"surname" varchar(50) NOT NULL,
	"username" varchar(50) NOT NULL UNIQUE,
	"password" varchar(50) NOT NULL,
	CONSTRAINT "rl_user_pk" PRIMARY KEY ("pkid")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "rl_user_role" (
    "pkid" serial NOT NULL,
	"fk_user_id" integer NOT NULL,
	"fk_role_id" integer NOT NULL,
	CONSTRAINT "rl_user_role_pk" PRIMARY KEY ("pkid")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "rl_role" (
	"pkid" serial NOT NULL,
	"name" varchar(50) NOT NULL,
	"description" varchar(50) NOT NULL,
	CONSTRAINT "rl_role_pk" PRIMARY KEY ("pkid")
) WITH (
  OIDS=FALSE
);

ALTER TABLE "rl_user_role" ADD CONSTRAINT "rl_user_role_fk0" FOREIGN KEY ("fk_user_id") REFERENCES "rl_user"("pkid");
ALTER TABLE "rl_user_role" ADD CONSTRAINT "rl_user_role_fk1" FOREIGN KEY ("fk_role_id") REFERENCES "rl_role"("pkid");

---INSERT DATA---
INSERT INTO "rl_role" (pkid, name, description) VALUES (DEFAULT, 'ROLE_A', 'Rol A Açıklama');
INSERT INTO "rl_role" (pkid, name, description) VALUES (DEFAULT, 'ROLE_B', 'Rol B Açıklama');
INSERT INTO "rl_role" (pkid, name, description) VALUES (DEFAULT, 'ROLE_C', 'Rol C Açıklama');

INSERT INTO "rl_user" (pkid, name, surname, username, password) VALUES (DEFAULT, 'Ahmet', 'Okay', 'ahmet', '123');
INSERT INTO "rl_user" (pkid, name, surname, username, password) VALUES (DEFAULT, 'Ahmet Yılmaz', 'Yılmaz', 'ahmetyilmaz', '123');
INSERT INTO "rl_user" (pkid, name, surname, username, password) VALUES (DEFAULT, 'Ahmet Yıkılmaz', 'Yıkılmaz', 'ahmetyikilmaz', '123');
INSERT INTO "rl_user" (pkid, name, surname, username, password) VALUES (DEFAULT, 'Hasan', 'Okay', 'hasan', '123');
INSERT INTO "rl_user" (pkid, name, surname, username, password) VALUES (DEFAULT, 'Hüseyin', 'Yıkılmaz', 'huseyin', '123');
INSERT INTO "rl_user" (pkid, name, surname, username, password) VALUES (DEFAULT, 'Mahmut', 'Okay', 'mahmut', '123');
INSERT INTO "rl_user" (pkid, name, surname, username, password) VALUES (DEFAULT, 'Mehmet', 'Okay', 'mehmet', '123');
INSERT INTO "rl_user" (pkid, name, surname, username, password) VALUES (DEFAULT, 'Müfide', 'Yıkılmaz', 'mufide', '123');
INSERT INTO "rl_user" (pkid, name, surname, username, password) VALUES (DEFAULT, 'Alp', 'Okay', 'alp', '123');
INSERT INTO "rl_user" (pkid, name, surname, username, password) VALUES (DEFAULT, 'Turkuaz', 'Okay', 'turkuaz', '123');
INSERT INTO "rl_user" (pkid, name, surname, username, password) VALUES (DEFAULT, 'Mert', 'Okay', 'mert', '123');
INSERT INTO "rl_user" (pkid, name, surname, username, password) VALUES (DEFAULT, 'Özhan', 'Okay', 'ozhan', '123');
INSERT INTO "rl_user" (pkid, name, surname, username, password) VALUES (DEFAULT, 'Gökhan', 'Yılmaz', 'gokhan', '123');
INSERT INTO "rl_user" (pkid, name, surname, username, password) VALUES (DEFAULT, 'Bilal', 'Okay', 'bilal', '123');
INSERT INTO "rl_user" (pkid, name, surname, username, password) VALUES (DEFAULT, 'Haluk', 'Okay', 'haluk', '123');
INSERT INTO "rl_user" (pkid, name, surname, username, password) VALUES (DEFAULT, 'Esin', 'Yılmaz', 'esin', '123');
INSERT INTO "rl_user" (pkid, name, surname, username, password) VALUES (DEFAULT, 'Banu', 'Okay', 'banu', '123');

INSERT INTO "rl_user_role" (pkid, fk_user_id, fk_role_id) VALUES (DEFAULT, 1, 1);
INSERT INTO "rl_user_role" (pkid, fk_user_id, fk_role_id) VALUES (DEFAULT, 2, 2);
INSERT INTO "rl_user_role" (pkid, fk_user_id, fk_role_id) VALUES (DEFAULT, 3, 3);