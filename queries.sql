-- database creation

CREATE TABLE dim_customers (
    id INTEGER PRIMARY KEY,
    customerID INTEGER NOT NULL,
    customerName VARCHAR(255) NOT NULL,
    customerState VARCHAR(225),
    customerZipCode VARCHAR(255),
    customerCountry VARCHAR(255),
    customerEmail VARCHAR(255),
    customerJob VARCHAR(255),
    customerCompany VARCHAR(255),
    customerSsn VARCHAR(255),
    customerBirthdate DATE,
    customerPhoneNumer VARCHAR,
    createDate TIMESTAMP NOT NULL
);

'name': fake.name(),
        'city': fake.city(),
        'state': fake.state(),
        'zip_code': fake.zipcode(),
        'country': fake.country(),
        'email': fake.email(),
        'job': fake.job(),
        'company': fake.company(),
        'ssn': fake.ssn(),
        'birthdate': fake.date_of_birth(),
        'phone_number': fake.phone_number()

create table dim_items (
	id INTEGER PRIMARY KEY,
	itemID INTEGER NOT NULL,
	itemName VARCHAR(255) NOT NULL,
	currentItemPrice FLOAT NOT NULL,
	createDate TIMESTAMP NOT NULL,
	updateDate TIMESTAMP NOT NULL
);

CREATE TABLE dim_locations (
	id INTEGER PRIMARY KEY,
	locationID INTEGER,
	locationName VARCHAR(255),
	locationStreet VARCHAR(255),
	locationPostCode VARCHAR(255)
);

create table fct_purchases (
	eventID INTEGER PRIMARY KEY,
	customerID INTEGER NOT NULL REFERENCES dim_customers(id),
	itemID INTEGER NOT NULL REFERENCES dim_items(id),
	locationID INTEGER NOT NULL REFERENCES dim_locations(id),
	purchaseTime TIMESTAMP NOT NULL
);