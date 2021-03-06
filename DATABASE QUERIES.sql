----STUDENT----

CREATE TABLE STUDENT(
STUDENTNUMBER       INT NOT NULL,
PASSWORD            VARCHAR(30) NOT NULL,
DOB                 DATE,
EMAIL               VARCHAR(30),
FIRSTNAME           VARCHAR(40),
LASTNAME            VARCHAR(30),
SEX                 VARCHAR(5) NOT NULL,
CURADD              VARCHAR(100) NOT NULL,
CURPHNO             BIGINT(10) NOT NULL,
DATEOFJOIN          DATE,
STATUS              BOOLEAN, 
PERMANENTADD        VARCHAR(100) NOT NULL,
PERMANENTPHNO       BIGINT(10) NOT NULL,
PRIMARY KEY         (STUDENTNUMBER),
);


---COLLEGE_INFO----

CREATE TABLE COLLEGEINFO(
SNO INT NOT NULL AUTO_INCREMENT,
COLLEGENAME     VARCHAR(50),
STARTYEAR       DATE,
ENDYEAR         DATE,
STUDENTNUMBER      INT NOT NULL,
COURSEID        INT NOT NULL,
DEGREEID        VARCHAR(10)   ,
FOREIGN         KEY (STUDENTNUMBER) REFERENCES STUDENT(STUDENTNUMBER), 
FOREIGN         KEY (DEGREEID) REFERENCES DEGREE(DEGREEID),
PRIMARY         KEY(SNO)
);


---- DEGREE ----
CREATE TABLE DEGREE(
DESCRIPTION   TEXT,
DURATION      INT NOT NULL,
DEGREEID      INT NOT NULL,
PRIMARY       KEY(DEGREEID)
);




----STUDENTCOURSES----
CREATE TABLE STUDENTCOURSE(           
COURSENAME                VARCHAR(30),
GRADE                     VARCHAR(30),
HOURS                     INT NOT NULL,
STUDENTNUMBER             INT NOT NULL,
COURSENUMBER              VARCHAR(30) NOT NULL,
OFFERINGDEPARTMENT        VARCHAR(30) NOT NULL,
FOREIGN KEY               (STUDENTNUMBER) REFERENCES STUDENT(STUDENTNUMBER), 
FOREIGN KEY               (COURSENUMBER) REFERENCES COURSE(COURSENUMBER),
FOREIGN KEY               (OFFERINGDEPARTMENT) REFERENCES COURSE(OFFERINGDEPARTMENT)
);

--PERMANENTADDRESS--
CREATE TABLE PERMANENTADDRESS(
STUDENTNUMBER       VARCHAR(30),
FIRSTNAME           VARCHAR(40),
LASTNAME            VARCHAR(30),
CITY                VARCHAR(30),
STATE               VARCHAR(40),
ZIPCODE             VARCHAR(40),
FOREIGN KEY         (STUDENTNUMBER) REFERENCES STUDENT(STUDENTNUMBER)
);

--STUDENTDEPARTMENT--
CREATE TABLE STUDENTDEPARTMENT(
STUDENTNUMBER       VARCHAR(30),
TOTALSUB            INT NOT NULL,
CODE                VARCHAR(30),
FOREIGN             KEY (STUDENTNUMBER) REFERENCES STUDENT(STUDENTNUMBER),
FOREIGN             KEY (CODE) REFERENCES DEPARTMENT(CODE)
);

--DEPARTMENT--
CREATE TABLE DEPARTMENT(
CODE        VARCHAR(30),
NAME        VARCHAR(30),
SUBJECTS    INT NOT NULL,
PRIMARY KEY (CODE)
);

--GRADEREPORT--
CREATE TABLE GRADEREPORT(
LETTERGRADE     VARCHAR(20),
NUMERICGRADE    VARCHAR(20),
STUDENTNUMBER   VARCHAR(20),
SECTIONNAME     VARCHAR(20),
FOREIGN KEY     (STUDENTNUMBER) REFERENCES STUDENT(STUDENTNUMBER),
FOREIGN KEY     (SECTIONNUMBER) REFERENCES SECTION(SECTIONNUMBER),
);

--SECTION--
CREATE TABLE SECTION(
SECTIONNAME     VARCHAR(30) NOT NULL,
COURSENUMBER      VARCHAR NOT NULL,
CODE              VARCHAR(30),
INSTRUCTOR        VARCHAR(20),
SEMESTER          VARCHAR(30),
YEAR              VARCHAR(30),
COURSE            VARCHAR(30),
PRIMARY KEY       (SEMESTER),
PRIMARY KEY       (YEAR),
FORIEGN KEY       (CODE) REFERENCES DEPARTMENT (CODE)
);

--COURSE--
CREATE TABLE COURSE(

COURSENUMBER         VARCHAR(30),
NAME                 VARCHAR(30),
DESCRIPTION          VARCHAR(30),
SEMESTERHOURS        VARCHAR(30),
COURSELEVEL          VARCHAR(30),
OFFERINGDEPARTMENT   VARCHAR(32) UNIQUE NOT NULL,
PRIMARY KEY          (COURSENUMBER)
);


---EXAM---
CREATE TABLE EXAM(
  EXAMID        VARCHAR(30) NOT NULL,
  EXAMTYPE      VARCHAR(30) NOT NULL,
  EXAMNAME      VARCHAR(30) NOT NULL,
  STARTDATE     DATE        NOT NULL,
  PRIMARY KEY   (EXAMID)
  );

--EXAMRESULT--
CREATE TABLE EXAMRESULT(
  EXAMID          VARCHAR(30) NOT NULL,
  STUDENTNUMBER   VARCHAR(30) NOT NULL,
  COURSENUMBER    VARCHAR(30) NOT NULL,
  MARKS           VARCHAR(30) NOT NULL,
  FOREIGN KEY     (EXAMID) REFERENCES EXAM(EXAMID),
  FOREIGN KEY     (STUDENTNUMBER) REFERENCES STUDENT(STUDENTNUMBER),
  FOREIGN KEY     (COURSENUMBER) REFERENCES COURSE(COURSENUMBER),
  );
  
  --ATTENDANCE--
  CREATE TABLE ATTENDANCE(
    TOTALATTENDANCE   INT NOT NULL,
    ELIGIBILITY       BOOLEAN NOT NULL,
    STUDENTNUMBER     VARCHAR(30) NOT NULL,
    REMARK TEXT       NOT NULL,
    STATUS            VARCHAR(30) NOT NULL,
    FOREIGN KEY       (STUDENTNUMBER) REFERENCES STUDENT(STUDENTNUMBER),
    );
    
    
    
--TEACHER--
CREATE TABLE TEACHER(
  TEACHERID INT NOT NULL,
  TEMAIL VARCHAR(30) NOT NULL,
  FIRSTNAME VARCHAR(30)NOT NULL,
  LASTNAME VARCHAR(30) NOT NULL,
  ADDRESS VARCHAR(30),
  PHONENUMBER VARCAHR(30),
  DOB DATE NOT NULL,
  PRIMARY KEY(TEACHERID)
  );
                   
