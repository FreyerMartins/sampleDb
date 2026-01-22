# Sample DB
This is a repo for a sample database that can be used for other projects. 
It uses [duckdb](https://duckdb.org/) which is a light approach to create a database locally.
It also has version controllable approach from which a user can create an entire db with python,
instead of having decontextualized `.sql` files floating in a repo.


## The General Idea

![a relational diagram of the database](images/db_diagram.png)

This is a Kimball style star schema tracking the purchase of items across a variety of users, store locations, and items.

## To-do

For the future this database can be upgraded in the following ways:
- add unique user ids for customers, items, and locations
- create dim_locations
- create fct_purchases
- Test dim_persons injection
- Test dim_items creation
- Create dim_items injection
- create dim_locations injection (use a JSON format for variety)
- create fct_purchases injection (manual or another CSV/JSON)