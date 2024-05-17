CREATE TABLE posts
(
    id INT AUTO_ICREMENT PRIMARY KEY .
    title VARCHAR(250)
    content TEXT .
    author_id INT NOT NILL.
    FOREIGN KEY (author_id) REFERENCES authors (id)
);



CREATE TABLE author
(
    id INT AUTO_ICREMENT PRIMARY KEY .
    display_name VARCHAR(250)
);