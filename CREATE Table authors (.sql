CREATE Table authors (
    authorid int(11) NOT NULL AUTO_INCREMENT,
    name varchar(55) not null default '',
    PRIMARY KEY (authorid)
) Engine=InnoDB DEFAULT charset=utf8 AUTO_INCREMENT=5;

INSERT INTO authors (authorid, name) VALUES 
(1,'J.R.R Tolkien'),
(2,'Alex Haley'),
(3,'Tom Clancy'),
(4,'Isaac Asilmov');

CREATE TABLE books (
    bookid int(11) not null AUTO_INCREMENT,
    authorid int(11) not null DEFAULT '0',
    title varchar(55) not null DEFAULT '',
    ISBN varchar(55) not null DEFAULT '',
    pub_year smallint(6) not null DEFAULT '0',
    available tinyint(4) not null,
    PRIMARY KEY (bookid)
) Engine=InnoDB DEFAULT charset=utf8 AUTO_INCREMENT=6;

INSERT INTO books (bookid, authorid, title, ISBN, pub_year, available) VALUES 
(1, 1, 'The Two Towers', '0-261-10236-2', 1954, 1),
(2, 1, 'The Return of the King', '0-261-10236-0', 1955, 1),
(3, 2, 'Roots', '0-440-17464-3', 1974, 1),
(4, 3, 'Rainbow Six', '0-425-17034-9', 1998, 1),
(5, 3, 'Teeth of the Tiger', '0-399-15079-X', 2003, 1);