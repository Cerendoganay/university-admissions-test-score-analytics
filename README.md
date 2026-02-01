# University Admissions Test Score Analytics System

This project is a relational database analytics system designed to analyze U.S. universities based on admissions rates, SAT/ACT exam scores, income distributions, and ranking-related attributes.
It was developed as an academic data project with a strong focus on data normalization, analytical querying, and SQL-based data processing.

# Project Objectives

Analyze university admissions and standardized test score data

Transform raw CSV data into a fully normalized relational schema (3NF)

Support analytical queries through stored procedures and SQL views

Enable data-driven comparisons between institutions

# Database Design

Centralized Institutions table as the core entity

Fully normalized schema to eliminate redundancy

Separate tables for:

Exam types (SAT / ACT)

Score types (Math, Reading, Composite, etc.)

Income distribution brackets

Clear one-to-many relationships enforced via foreign keys

# Data Processing Workflow

Raw CSV dataset imported into a staging table

Data cleansing and type conversion (handling NULL / NA values)

Transformation into normalized tables using SQL-based insert scripts

Analytical access provided via views and stored procedures

# Key Features

Normalized relational schema (3NF)

SQL-based ETL-style data loading

Parameterized stored procedures for analytical queries

SQL views for summarized reporting

Designed for extensibility and future analytics

# Technologies Used

MySQL

SQL

Relational Database Design

Stored Procedures & Views

Data Normalization

MySQL Workbench

# Repository Structure
.
├── schema.sql                # Database schema (DDL)
├── insert_scripts.sql        # Data loading and transformation scripts
├── procedures.sql            # Stored procedures
├── views.sql                 # SQL views for analytics
└── FINALPROJECTREPORT.pdf    # Full academic project report

# Academic Context

Developed as part of the Database Systems course.
The project emphasizes data modeling, analytical SQL usage, and structured data processing rather than application-level development.

# Possible Extensions

Adding a time dimension for historical trend analysis

Integrating additional educational datasets

Query optimization through advanced indexing

Python-based ETL pipelines for automated preprocessing

# Author

Ceren Doğanay
Computer Engineering Student
GitHub: https://github.com/Cerendoganay
