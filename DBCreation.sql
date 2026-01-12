-- database creation

CREATE TABLE dim_persons (
    personID int not null,
    deptID varchar(255),
    schoolID varchar(255),
    uniID varchar(255),
    addressID varchar(255),
    constraint persons_pk PRIMARY KEY (personID)
);

create table dim_scores (
	scoreID int NOT NULL,
	scoreName varchar(255) NOT NULL,
	constraint scores_pk primary	KEY (scoreID);

create table fct_scores (
	eventID int NOT NULL,
	personID int NOT NULL,
	scoreID int NOT NULL,
	score int NOT NULL 
);