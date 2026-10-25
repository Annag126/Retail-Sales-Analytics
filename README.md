# Retail Sales Analytics and Performance Dashboard

## Project Overview
This project analyzes retail sales data to identify sales trends, evaluate profitability, compare regional and category performance, and generate business insights. It uses Python for data analysis, SQL for querying data, and Power BI to create an interactive dashboard.

## Objectives
- Analyze overall sales, profit, quantity, and order performance.
- Identify monthly sales trends and high-performing product categories.
- Compare sales and profit across different regions.
- Identify low-profit and loss-making products.
- Build a dashboard to support data-driven business decisions.

## Tools and Technologies
- **Python:** Pandas, NumPy, Matplotlib, Seaborn
- **SQL:** MySQL
- **Power BI:** Interactive dashboard and KPI visualization
- **Jupyter Notebook:** Data cleaning, exploratory data analysis, and visualizations
- **Git and GitHub:** Version control and project hosting

## Dataset
The project uses the Superstore sales dataset.

- **Records:** 9,994
- **Original columns:** 21
- **Period:** 2011–2014
- **Key fields:** Order Date, Ship Date, Category, Sub-Category, Region, Sales, Profit, Quantity, and Customer Segment

The project includes the original dataset and a cleaned dataset.

## Project Workflow
1. **Data preparation:** Load the dataset, inspect data types, check missing values and duplicates, and convert date columns.
2. **Exploratory data analysis:** Analyze sales, profit, orders, categories, regions, and product performance.
3. **Data visualization:** Create charts to understand trends, distributions, relationships, and performance differences.
4. **SQL analysis:** Use SQL queries to analyze retail sales and business performance.
5. **Power BI dashboard:** Present key performance indicators and interactive visualizations.
6. **Business recommendations:** Use the findings to identify opportunities for improving profitability and sales.

## Key Results

| Metric | Result |
|---|---:|
| Total Sales | $2,297,200.86 |
| Total Profit | $286,397.02 |
| Total Quantity Sold | 37,873 |
| Total Orders | 5,009 |
| Average Sales per Order | $458.61 |

## Key Insights
- Technology generated the highest sales and profit among the three product categories.
- Furniture generated substantial sales but comparatively low profit.
- The West region recorded the highest sales and profit.
- The Central region recorded the lowest regional profit.
- The Cubify CubeX 3D Printer Double Head Print was identified as a loss-making product in the analysis.

## Business Recommendations
- Review Furniture pricing, costs, and discount strategies to improve profitability.
- Investigate products with negative profits and evaluate their pricing and discount policies.
- Study successful products and regions to identify practices that could improve performance elsewhere.
- Monitor monthly sales and profitability through the Power BI dashboard.

## Repository Contents
- `Dataset/` — Original and cleaned datasets
- `SS/` — Exported charts and visualizations
- `retail_sales_analysis.ipynb` — Python analysis notebook
- `Retail_Sales_Queries.sql` — SQL analysis queries
- `Retail_Sales_Dashboard.pbix` — Power BI dashboard
- `import_to_mysql.py` — Python script for importing data into MySQL

## How to Run
1. Clone or download this repository.
2. Install Python and the required libraries:
   ```bash
   pip install pandas numpy matplotlib seaborn
   ```
3. Open `retail_sales_analysis.ipynb` in Jupyter Notebook.
4. Update file paths if necessary before running the notebook.
5. Open `Retail_Sales_Queries.sql` in a MySQL-compatible SQL editor.
6. Open `Retail_Sales_Dashboard.pbix` using Power BI Desktop.

## Conclusion
This project demonstrates an end-to-end retail analytics workflow, from data preparation and exploratory analysis to SQL querying, dashboard development, and business recommendations. It highlights how data analytics can help businesses understand sales performance and identify opportunities to improve profitability.

## Author
**Anna George**

GitHub: [Annag126](https://github.com/Annag126)
