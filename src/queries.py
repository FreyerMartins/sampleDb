def get_customer_create_query():
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
