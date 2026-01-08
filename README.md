# Data Warehouse Project
Welcome to my Data Warehouse and Analytics Project! This project demonstrates a comprehensive end-to-end data engineering solution — from raw data ingestion to building a business-ready Star Schema.

Following the Medallion Architecture, I integrated data from two source systems (CRM and ERP), performed extensive data cleaning in SQL, and modeled the data for analytical reporting

---
## Data Architecture

The architecture follows a modular Bronze, Silver, and Gold approach, ensuring data quality and traceability at every stage:

Bronze Layer: Raw data ingestion from CSV files using BULK INSERT.

Silver Layer: Data cleansing, standardization (Gender, Marital Status, Country names), and handling of invalid/null values.

Gold Layer: Dimensional modeling (Star Schema) using Views to create a "Single Source of Truth."

## High Level Architecture

<img width="921" height="621" alt="High-Level-Architecture" src="https://github.com/user-attachments/assets/1908fd12-5bad-4e02-b390-85c1b6da412d" />


---
## Tools & Technologies

- Database: Microsoft SQL Server

- Language: T-SQL (Stored Procedures, Views, DDL/DML)

- Data Modeling: Dimensional Modeling (Star Schema)

- Quality Assurance: SQL-based Data Validation Tests

- Documentation: Data Cataloging and Markdown

---
## Project Structure

```
data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architecture details
│   ├── etl.drawio                      # Draw.io file shows all different techniquies and methods of ETL
│   ├── data_architecture.drawio        # Draw.io file shows the project's architecture
│   ├── data_catalog.md                 # Catalog of datasets, including field descriptions and metadata
│   ├── data_flow.drawio                # Draw.io file for the data flow diagram
│   ├── data_models.drawio              # Draw.io file for data models (star schema)
│   ├── naming-conventions.md           # Consistent naming guidelines for tables, columns, and files
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Scripts for extracting and loading raw data
│   ├── silver/                         # Scripts for cleaning and transforming data
│   ├── gold/                           # Scripts for creating analytical models
│
├── tests/                              # Test scripts and quality files
│
├── README.md                           # Project overview and instructions
├── LICENSE                             # License information for the repository
├── .gitignore                          # Files and directories to be ignored by Git
└── requirements.txt                    # Dependencies and requirements for the project
```

---
## Challenges Faced & Solutions

- Data Inconsistency across Systems: * Challenge: The CRM and ERP systems used different formats for Gender (e.g., 'M/F' vs 'Male/Female') and Country names.

Solution: Implemented a mapping logic in the Silver layer using CASE statements to standardize all attributes before they reached the Gold layer.

- Dirty Data & Outliers: * Challenge: Encountered birthdates from the year 1900 and missing values in critical fields.

Solution: Applied data quality filters (e.g., bdate < '1924-01-01') and used COALESCE to merge attributes from multiple sources, ensuring a complete profile for each customer.

- Performance vs. Traceability: * Challenge: Ensuring the ETL process was repeatable and observable.

Solution: Modularized the entire pipeline into Stored Procedures with built-in logging (start_time, end_time, duration) to track performance and success.

---
## Quality Assurance

To ensure the reliability of the warehouse, I developed a testing framework located in the /tests folder. These scripts check for:

- Uniqueness: No duplicate Primary Keys in Dimensions or Facts.

- Referential Integrity: Ensuring every sale in fact_sales links to a valid customer and product.

- Standardization: Validating that all gender and marital status codes were correctly mapped.

---
## How to Get Started
1. Clone the repository.
2. Run /scripts/init_database.sql.
3. Execute the Bronze and Silver Stored Procedures to populate the layers.
4. Query the Gold Views to start your analysis!

---
## Connect with Me
LinkedIn: 
GitHub:
