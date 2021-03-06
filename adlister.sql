 USE adlister_db;

CREATE TABLE IF NOT EXISTS users(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(200) NOT NULL,
  last_name VARCHAR(200) NOT NULL,
  email VARCHAR(200) NOT NULL,
  PRIMARY KEY(id)
);


CREATE TABLE IF NOT EXISTS ad(
  ad_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED NOT NULL,
  title VARCHAR(500) DEFAULT NOT NULL,
  price DOUBLE UNSIGNED DEFAULT 0.00,
  description TEXT DEFAULT NULL,
  PRIMARY KEY(ad_id),
  FOREIGN KEY(user_id) REFRENCES users(id)
);


CREATE TABLE IF NOT EXISTS categories(
  cat_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  cat_name VARCHAR(200) NOT NULL,
  PRIMARY KEY(cat_id)
);





CREATE TABLE IF NOT EXISTS ad categories(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  ad_id INT UNSIGNED NOT NULL,
  cat_id INT UNSIGNED NOT NULL,
  FOREIGN KEY(ad_id) REFERENCES ad(ad_id),
  FOREIGN KEY(cat_id) REFERENCES categories(cat_id),
  PRIMARY KEY(id)
);



4)select * from ads
where id in (
  select id from users
  where name = ''
  );

users:
user_id int
user_name varchar ,
password varchar,
email varchar
INSERT INTO users(name, password, email) VALUES
  ('sabita',   'password','sabitaregmi.com'),
  ('luis',  'password1','abc.com'),
  ('erik',  'password2','xyz.com');


INSERT INTO categories(name)
VALUES

  ('TOOLS'),
  ('JEWELRY'),
  ('ELECTRONICS'),
  ('ANTIQUES'),
  ('HANDICRAFTS'),
  ('DIY'),
  ('APPLIANCES');