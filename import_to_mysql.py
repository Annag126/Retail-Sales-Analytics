
import pandas as pd
from sqlalchemy import create_engine

# Update this path to your actual CSV location
csv_path = r"D:\internnova\Retail_Sales_Analytics\Superstore_Cleaned.csv"

# Read the complete CSV file
df = pd.read_csv(csv_path)

print("CSV rows found:", len(df))

# Connect to MySQL — update username/password if needed
username = "root"
password = input("Enter your MySQL root password: ")
host = "localhost"
database = "retail_sales_analytics"

engine = create_engine(
    f"mysql+pymysql://{username}:{password}@{host}/{database}"
)

# Import all records into a NEW table
df.to_sql(
    name="superstore_python_import",
    con=engine,
    if_exists="replace",
    index=False,
    chunksize=500
)

# Verify the number of imported rows
with engine.connect() as connection:
    from sqlalchemy import text
    result = connection.execute(
        text("SELECT COUNT(*) FROM superstore_python_import")
    )
    print("Rows imported into MySQL:", result.scalar())

engine.dispose()
