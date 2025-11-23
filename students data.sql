create  database college;

use college;

create table students(
id int auto_increment,
Name varchar(40) NOT NULL,
Age tinyint unsigned,
gender enum("Male","female") not null,
percentage tinyint unsigned,
location varchar(50) default "india",
primary key(id),
check (age > 5)
);

describe students;



 