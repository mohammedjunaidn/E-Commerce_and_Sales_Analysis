# E-Commerce_and_Sales_report
## Introduction
E-commerce delivered sales records from 2019 to 2025 across various states in India, for customers aged 15 to 61,<br>
consisting of 40,000 rows and 25 columns of uncleaned and messy data.
## Objective
Clean and preprocess the raw dataset, analyze the sales and performance of e-commerce from 2019 to 2025 across ,<br>
various states in India, and develop a comprehensive visual data analytics report based on sales data.<br>
The analysis aims to answer key business questions essential for understanding overall e-commerce performance <br>
and customer purchasing behaviour.
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
special characters, spelling mistakes, inconsistent entries, typos, incorrect data types, and invalid values were efficiently addressed.<br>                     Missing, NaN, and null values were handled using suitable techniques:
-  Median imputation for skewed numerical data with outliers.
-  Mean imputation for normally distributed numerical data without outliers.
-  Mode imputation for categorical columns.
-  Forward-fill for date-related columns.
-  Logical imputation where context-based correction was required.

The cleaned E-Commerce and Sales dataset contains 38,176 rows and 27 columns (Data types: float64 (10), int64 (5), object (12)).
https://drive.google.com/file/d/1Ri__E5e7CZJ0fua66Wykd6rzsqeScK-c/view?usp=drive_link.
## Visualization
The cleaned E-Commerce and Sales dataset contains 38,176 rows and 27 columns (float64 = 10, int64 = 5, object = 12).<br>
It covers the period from January 2019 to January 2025 and includes records from various states in India for customers aged 15 to 61.<br>
A total of 19 visualizations were used in the analysis to create an effective data analytics report.
- Vertical Bar Charts: 6.
- Horizontal Bar, Trend, Pie, KPI, and Scatterplots: 2 each.
- Correlation Heatmap, Treemap, and Donut Chart: 1 each.

Extracting useful insights and transforming raw data into visual charts to create an effective data analytics report..This helps <br> 
in making better e-commerce decisions because visualization clearly highlights key insights, supports informed choices and <br>
assists in planning future goals. It also makes presentations easier and allows non-technical stakeholders to understand <br>
their ongoing business. Overall, this improves the e-commerce business by helping teams make the right decisions.<br>
## Tools
- 1 Jupyter Notebook<br>
- 2 Python Libraries:<br>
Pandas and NumPy — used for Exploratory Data Analysis (EDA), data cleaning, and preprocessing <br>
Matplotlib and Seaborn — used for data visualization
## Project Structure
- Uncleaned Dataset (ZIP): Raw dataset before data cleaning and preprocessing.
- Jupyter Notebook: EDA & Data Preprocessing, includes exploratory data analysis, handling missing values, encoding, scaling, and preprocessing steps.
- Cleaned Dataset (ZIP): Final dataset after data cleaning and preprocessing.
- Jupyter Notebook: Data Visualization, contains visual analytics, charts, and insights derived from the cleaned dataset.
- MS Word Report: A quick summary comparing the cleaned and uncleaned datasets, including key findings and improvements.
## Conclusion
This data analytics report provides clear insights into the sales trends and overall performance of the e-commerce business from 2019 to 2025<br>
across various states in India. The data cleaning and analysis process transformed raw, unstructured information into meaningful insights<br> 
that support better decision-making and help drive future business growth.<br>
The final cleaned dataset is now structured, consistent, and reliable for further analysis.<br>
- Database storage using SQL for efficient data management and retrieval.
- Power BI dashboard creation for professional visual reporting.
- Advanced statistical analysis to uncover hidden patterns and understand relationships between variables.
- Machine learning model development to forecast future sales trends based on six years of historical data.


