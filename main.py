from src.queries import create_customer_query
from src.queries import create_item_query
from src.functions import generate_person


import pandas as pd
import duckdb

seed = 69

con = duckdb.connect("sampling_database.db")

person = generate_person(seed)
print(person)

create_dim_customer_table = create_customer_query()
con.sql(create_dim_customer_table)

create_dim_items = create_item_query()
con.sql(create_dim_items)

con.close()