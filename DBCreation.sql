-- database creation

CREATE TABLE dim_customers (
    id INTEGER PRIMARY KEY UNIQUE,
    customerID INTEGER NOT NULL,
    customerName VARCHAR(255) NOT NULL,
    customerAge VARCHAR(255),
    customerCity VARCHAR(255),
    createDate TIMESTAMP NOT NULL
);

create table dim_items (
	id INTEGER PRIMARY KEY UNIQUE,
	itemID INTEGER NOT NULL,
	itemName VARCHAR(255) NOT NULL,
	currentItemPrice FLOAT NOT NULL,
	createDate TIMESTAMP NOT NULL,
	updateDate TIMESTAMP NOT NULL
);

CREATE TABLE dim_locations (
	id INTEGER PRIMARY KEY UNIQUE,
	locationID INTEGER,
	locationName VARCHAR(255),
	locationStreet VARCHAR(255),
	locationPostCode VARCHAR(255)
);

create table fct_purchases (
	eventID INTEGER PRIMARY KEY UNIQUE,
	customerID INTEGER NOT NULL,
	itemID INTEGER NOT NULL,
	locationID INTEGER NOT NULL,
	purchaseTime TIMESTAMP NOT NULL
);