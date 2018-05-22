CREATE TABLE IF NOT EXISTS KINDERGARDEN
(
	ID INTEGER NOT NULL IDENTITY,
	KINDERGARDEN_NAME         VARCHAR(30),
	COUNTRY                   VARCHAR(20),
	PRIMARY KEY (ID)
);
CREATE TABLE IF NOT EXISTS CHILD
(
	ID INTEGER NOT NULL IDENTITY,
	FIRST_NAME           VARCHAR (20),
	LAST_NAME            VARCHAR (20),
	KINDERGARDEN_ID      INTEGER,
	PRIMARY KEY (ID),
	FOREIGN KEY (KINDERGARDEN_ID) REFERENCES KINDERGARDEN (ID)
);

CREATE TABLE IF NOT EXISTS TEACHER
(
  ID INTEGER NOT NULL IDENTITY,
  FIRST_NAME           VARCHAR (20),
	LAST_NAME            VARCHAR (20),
  SALARY               DOUBLE,
  CHILD_ID             INTEGER,
  PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS CHILD_TEACHER
(
	CHILD_ID      INTEGER,
	TEACHER_ID       INTEGER,
	PRIMARY KEY (CHILD_ID, TEACHER_ID),
	FOREIGN KEY (CHILD_ID) REFERENCES CHILD (ID),
	FOREIGN KEY (TEACHER_ID) REFERENCES TEACHER (ID)
);