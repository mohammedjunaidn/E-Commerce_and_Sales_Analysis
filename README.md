# E-Commerce_and_Sales_report
## Introduction
E-commerce delivered sales records from 2019 to 2025 across various states in India, for customers aged 15 to 61,<br>
consisting of 40,000 rows and 25 columns of uncleaned and messy data.
## Objective
Clean and preprocess the raw dataset, analyze the sales and performance of e-commerce from 2019 to 2025 across ,<br>
various states in India, and develop a comprehensive visual data analytics report based on sales data.<br>
The analysis aims to answer key business questions essential for understanding overall e-commerce performance <br>
and customer purchasing behaviour.<br>
Example
- Which product is sold the most ?
- Which product generates the highest sales and profit ?
- Which region contributes the highest profit ? etc.....
## Dataset Description
https://drive.google.com/file/d/1RPMdEC_Mdv6sItDwWZAlVF1JOYPQyJFC/view?usp=drive_link <br>
The dataset, obtained from the Kaggle e-commerce platform, contains sales delivery records from January 2019 to January 2025 <br>
(6 years) for customers aged 15 to 61, covering various states across India including the South, West, North, East, and <br>
Central regions. It consists of 40,000 rows and 25 columns (data types: float64(5), object(20)) representing delivered orders.<br>
The dataset exhibits several data quality issues, including missing values (NaN and null), blank columns, special characters,<br>
spelling mistakes, inconsistent entries, typos, duplicate records in unique columns, incorrect data types, and invalid values.<br>
Key columns are: Product_subCategory,  Product_marketingPrice, Quantity, CustomerFeedback, Delivered_date, DeliveryRegion,<br>
DeliveryState, Sales, Cost, Revenue and Profit.
## EDA, Data cleaning and Preprocessing
Duplicate records found in unique identifier columns were removed, which reduced the row count from 40,000 to 38,176.<br>
One column, DeliveryStatus was dropped because the Kaggle dataset already represents delivered sales records.<br>
Three new columns were added for improved analytics and visualization:<br>
- Age_category (derived from Age),
- Category (derived from Sub_category),
- Customer_rating (derived from Customer_feedback).<br>

These additions support better reporting, segmentation, and analysis. Some column names were renamed to improve readability.<br>
To ensure data consistency, all column data types were corrected to their appropriate types. Several data quality issues such as <br>
special characters, spelling mistakes, inconsistent entries, typos, incorrect data types, and invalid values were efficiently addressed.<br>                  
Missing, NaN, and null values were handled using suitable techniques:
-  Median imputation for skewed numerical data with outliers.
-  Mean imputation for normally distributed numerical data without outliers.
-  Mode imputation for categorical columns.
-  Forward-fill for date-related columns.
-  Logical imputation where context-based correction was required.
Exploratory Data Analysis (EDA) and data cleaning were conducted using Python libraries such as Pandas, NumPy, Matplotlib, and Seaborn,<br>
as well as the Power Query tool in Excel. The same uncleaned CSV file was uploaded into both Jupyter Notebook (within VS Code) and <br>
Power Query in Excel. Both tools effectively supported the EDA and data-cleaning process.<br>
The cleaned E-Commerce and Sales dataset contains 38,176 rows and 27 columns (Data types: float64 (9), int64 (6), object (12)).
https://drive.google.com/file/d/1vGJ2FdUkDXgNo5QZcBt54KrMXkVTU_cO/view?usp=drive_link.
## Visualization
Extracting useful insights and transforming raw data into visual charts to create an effective data analytics report..This helps <br> 
in making better e-commerce decisions because visualization clearly highlights key insights, supports informed choices and <br>
assists in planning future goals. It also makes presentations easier and allows non-technical stakeholders to understand <br>
their ongoing business. Overall, this improves the e-commerce business by helping teams make the right decisions.<br>

Data visualization was performed using Python libraries such as Matplotlib and Seaborn, as well as the BI tool Power BI for creating interactive <br>
dashboards to enable better e-commerce and sales business performance analysis.<br>
## Statistical Analysis and columns extraction
Conducted a comprehensive statistical analysis encompassing both descriptive and inferential statistics. The study provides an understanding of <br>
statistical trends and the overall performance of the ongoing business. The analysis also offers insights into relationships between column <br>
values and interactions across different columns, supporting improved machine learning performance for prediction and future value forecasting.<br>
Libraries Used:<br>
- Pandas
- NumPy
- Statsmodels
- SciPy
- Matplotlib
- Seaborn <br>
The dataset has been organized into three separate tables, linked using the common column Customer_id, to enable structured data storage and<br>
efficient retrieval. Some column names have been modified to improve readability. This organization enhances data management, simplifies <br> 
SQL-based queries, and supports efficient data storage and retrieval in the database. It also helps address business-related problems using <br>
SQL queries and enables more effective analysis for predictive modeling and forecasting.<br>
Table names:<br>
- customer_details
- product_details 
- delivery_and_sales_details
## Tools Used
- 1 Jupyter Notebook (within VS Code): Used to create a clear and well-structured analytical report.
- 2 Python Programming: Utilized libraries such as Pandas, NumPy, Matplotlib, Seaborn, SciPy, and Statsmodels for<br>
  Exploratory Data Analysis (EDA), data cleaning, preprocessing, statistical analysis, and visualization.
- 3 Excel: Used the Power Query tool to support EDA, data cleaning, and preprocessing.
- 4 Power BI: Used to create interactive dashboards for improved presentation and reporting.
- 5 MySQL Workbench: Used to store the split tables in a database and retrieve records for report submission.
- 6 MS Word: Used for quick report preparation and documentation.
## Project Structure
- Uncleaned Dataset (ZIP): Raw dataset before data cleaning and preprocessing.
- Jupyter Notebook: EDA & Data Preprocessing, includes exploratory data analysis, handling missing values, encoding, scaling, and preprocessing steps.
- Cleaned Dataset (ZIP): Final dataset after data cleaning and preprocessing.
- Jupyter Notebook: Data Visualization, contains visual analytics, charts, and insights derived from the cleaned dataset.
- MS Word Report: A quick summary comparing the cleaned and uncleaned datasets, including key findings and improvements.
## Conclusion
This data analytics report provides clear insights into the sales trends and overall performance of the e-commerce business from 2019 to 2025<br>
across various states in India. The data cleaning and analysis process transformed raw, unstructured information into meaningful insights<br> 
that support better decision-making and help drive future business growth.The final cleaned dataset is now structured, consistent, and reliable<br> 
for future forecasting using machine learning to predict business outcomes


