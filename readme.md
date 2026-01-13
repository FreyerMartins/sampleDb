# Sample DB
This is a repo for a sample database that can be used for other projects. 
It uses [duckdb](https://duckdb.org/) which is a light approach to create a database locally.


Using a `.csv` file was getting old and does not reflect some of the complexity of data ingestion in the real world.

## General Idea

![a relational diagram of the database](images/db_diagram.png)

This is a Kimball style star schema tracking the purchase of items across a variety of users, store locations, and items.

## To-do

For the future this database can be upgraded in the following ways:
- add unique user ids for customers, items, and locations
- create sample data injection python files using `UPDATE TABLE` statements
- create foreign key constraints in the `CREATE TABLE` statements
- index tables for better performance in the future
- 