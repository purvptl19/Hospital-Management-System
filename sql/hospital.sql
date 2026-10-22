
BEGIN EXECUTE IMMEDIATE 'DROP TABLE adminreg PURGE'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE doctor PURGE'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE login PURGE'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE patient PURGE'; EXCEPTION WHEN OTHERS THEN NULL; END;
/

CREATE TABLE adminreg (
  username VARCHAR2(50),
  password VARCHAR2(35)
);

CREATE TABLE doctor (
  id            NUMBER(12) NOT NULL,
  fname         VARCHAR2(100),
  lname         VARCHAR2(100),
  gender        VARCHAR2(100),
  mobile        VARCHAR2(100),
  city          VARCHAR2(100),
  email         VARCHAR2(100),
  age           VARCHAR2(100),
  address       VARCHAR2(200),
  reg_date      VARCHAR2(100),
  qualification VARCHAR2(100),
  CONSTRAINT pk_doctor PRIMARY KEY (id)
);

CREATE TABLE login (
  username VARCHAR2(15),
  password VARCHAR2(15)
);

CREATE TABLE patient (
  fname    VARCHAR2(30),
  lname    VARCHAR2(30),
  gender   VARCHAR2(10),
  city     VARCHAR2(30),
  email    VARCHAR2(50),
  age      VARCHAR2(15),
  address  VARCHAR2(200),
  reg_date VARCHAR2(50),
  mobile   VARCHAR2(50) NOT NULL,
  CONSTRAINT pk_patient PRIMARY KEY (mobile)
);

-- adminreg
INSERT INTO adminreg VALUES ('admin','admin');

-- login (the empty row ('','') was skipped: Oracle treats '' as NULL)
INSERT INTO login VALUES ('purv patel','purv@123');
INSERT INTO login VALUES ('1234','1234');
INSERT INTO login VALUES ('1234','1234');
INSERT INTO login VALUES ('123','123');
INSERT INTO login VALUES ('123','123');

