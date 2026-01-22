def create_customer_query():
    query = ('CREATE TABLE dim_customers ('
             'id INTEGER PRIMARY KEY,'
             'customerID INTEGER NOT NULL,'
             'customerName VARCHAR(255) NOT NULL,'
             'customerState VARCHAR(225),'
             'customerZipCode VARCHAR(255),'
             'customerCountry VARCHAR(255),'
             'customerEmail VARCHAR(255),'
             'customerJob VARCHAR(255),'
             'customerCompany VARCHAR(255),'
             'customerSsn VARCHAR(255),'
             'customerBirthdate DATE,'
             'customerPhoneNumer VARCHAR(255),'
             'createDate TIMESTAMP NOT NULL'
             ');')
    return query

def create_item_query():
    query = ('CREATE TABLE dim_items ('
             'itemID INTEGER PRIMARY KEY,'
             'itemName VARCHAR(255) NOT NULL,'
             'currentItemPrice FLOAT NOT NULL,'
             'createDate TIMESTAMP NOT NULL,'
             'updateDate TIMESTAMP NOT NULL'
             ');')