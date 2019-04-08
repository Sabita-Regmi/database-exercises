

USE codeup_test_db;
DROP TABLE IF EXISTS albums;


CREATE TABLE albums (
    id INT  AUTO_INCREMENT,
    artist VARCHAR(50) ,
    name  VARCHAR(100) ,
    release_date DATE,
    sales float,
    genre VARCHAR(100),
    PRIMARY KEY(id)


);