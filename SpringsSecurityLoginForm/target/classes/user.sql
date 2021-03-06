CREATE TABLE USERS (	
	"USERID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"USERNAME" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"PASSWORD" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"FIRSTNAME" VARCHAR2(30 BYTE), 
	"LASTNAME" VARCHAR2(30 BYTE), 
	"MAIL" VARCHAR2(40 BYTE), 
	"PHONE" NUMBER NOT NULL ENABLE, 
	"ENABLED" NUMBER, 
	 CONSTRAINT "USERS_PK" PRIMARY KEY ("USERID"), 
	 CONSTRAINT "USERS_UK1" UNIQUE ("USERNAME")
);
 
 
 CREATE TABLE USER_ROLES  (	
	"USERID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"USER_ROLES" VARCHAR2(20 BYTE), 
	CONSTRAINT "USER_ROLES_PK" PRIMARY KEY ("USERID"), 
    CONSTRAINT "USER_ROLES_FK1" FOREIGN KEY ("USERID") REFERENCES "USERS" ("USERID") ENABLE
);


INSERT INTO USERS (USERID, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, MAIL, PHONE, ENABLED) 
VALUES ('10001', 'gaurav', 'pass', 'Gaurav', 'Garg', 'garg@gmail.com', '9876543210', 1);

INSERT INTO USERS (USERID, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, MAIL, PHONE, ENABLED) 
VALUES ('10002', 'rahul', 'paas', 'Rahul', 'Verma', 'rahul@gmail.com', '8674532109', 1);

INSERT INTO USER_ROLES (USERID, USER_ROLES) VALUES ('10001', 'ADMIN');
INSERT INTO USER_ROLES (USERID, USER_ROLES) VALUES ('10002', 'DEV');
