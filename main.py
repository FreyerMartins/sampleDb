from src.queries import get_customer_create_query
from src.functions import generate_person


import pandas as pd
import duckdb

seed = 69

con = duckdb.connect("sampling_database.db")

person = generate_person(seed)
print(person)

create_dim_customer_table = get_customer_create_query()
con.sql(create_dim_customer_table)

con.close()