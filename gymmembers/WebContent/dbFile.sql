
CREATE TABLE users (
  userid number(10) primary key,
  firstname varchar(45) not null,
  lastname varchar(45) not NULL,
  dob date not NULL,
  email varchar(100) unique,
  address varchar(100),
  joining date not NULL,
  expaire date not NULL
  );