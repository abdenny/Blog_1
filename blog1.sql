-- CREATE TABLE categories(
--     id SERIAL NOT NULL PRIMARY KEY,
--     title varchar(50)
-- );

-- CREATE TABLE authors(
--     id REFERENCES blogs(authorid),
--     name varchar(50),
--     bio varchar(300),
--     imageurl varchar(300)
-- );

-- CREATE TABLE blogs(
--     id SERIAL NOT NULL PRIMARY KEY,
--     title varchar(50),
--     authorid REFERENCES authors(id),
--     categoryid REFERENCES categories(id),
--     body varchar(300),
--     date date,
--     summary varchar(500)
-- );




CREATE TABLE categories (
    id SERIAL NOT NULL PRIMARY KEY,
    name varchar(50)
);
INSERT INTO categories VALUES
    (DEFAULT, 'Javascript'),
    (DEFAULT, 'Bootstrap4'),
    (DEFAULT, 'Node.js'),
    (DEFAULT, 'CSS'),
    (DEFAULT, 'HTML5'),
    (DEFAULT, 'Express'),
    (DEFAULT, 'PostgreSQL'),
    (DEFAULT, 'React');
CREATE TABLE authors (
    id SERIAL NOT NULL PRIMARY KEY,
    name varchar(100),
    biography varchar(500),
    imageURL varchar(300)
);
INSERT INTO authors VALUES
(DEFAULT, 'Matthew', 'lorem ipsum dolor THE BEST', 'https://hr-congress.com/wp-content/uploads/2019/04/Vishen-Lakhiani_Official-e1559551015277-500x500.jpeg'),
(DEFAULT, 'Mark', 'lorem ipsum dolor AROUND', 'https://newzoo.com/wp-content/uploads/2019/03/Jonas-500x500.jpg'),
(DEFAULT, 'Luke', 'lorem ipsum dolor NOTHING EVER ', 'https://2cl03t2b1kal1nj21k1h04f3-wpengine.netdna-ssl.com/wp-content/uploads/2019/05/Cutting-Cody-1-e1572369784927-500x500.jpg'),
(DEFAULT, 'John', 'lorem ipsum dolor KEEPS ME DOWN', 'https://www.precisionorthomd.com/wp-content/uploads/2019/07/warren-yu-500x500.jpg');

CREATE TABLE blogs (
    id SERIAL NOT NULL PRIMARY KEY,
    title varchar(50),
    author_id integer REFERENCES authors(id),
    category_id integer REFERENCES categories(id),
    body varchar(500),
    date_pub date
);