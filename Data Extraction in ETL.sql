/* =========================================================
   Assignment: Data Extraction in ETL
   ========================================================= */


/* ---------------------------------------------------------
   Question 1:
   Describe different types of data sources used in ETL
   with suitable examples.
   --------------------------------------------------------- */

-- Answer:
-- 1. Databases:
--    Examples: MySQL, PostgreSQL, Oracle
--    Used for structured enterprise data

-- 2. Flat Files:
--    Examples: CSV, TXT, Excel files
--    Used for batch data processing

-- 3. APIs:
--    Examples: REST APIs, Web APIs
--    Used for real-time or near real-time data

-- 4. Cloud Sources:
--    Examples: AWS S3, Google BigQuery
--    Used for scalable data storage

-- 5. Logs and Streaming Sources:
--    Examples: Server logs, Kafka streams
--    Used for event-based data


/* ---------------------------------------------------------
   Question 2:
   What is data extraction?
   Explain its role in the ETL pipeline.
   --------------------------------------------------------- */

-- Answer:
-- Data extraction is the process of collecting data
-- from different source systems for further processing.

-- Role in ETL:
-- It is the first step of ETL
-- Ensures raw data is accurately pulled
-- Forms the foundation for transformation and loading
-- Poor extraction leads to poor analytics


/* ---------------------------------------------------------
   Question 3:
   Explain the difference between CSV and Excel
   in terms of extraction and ETL usage.
   --------------------------------------------------------- */

-- Answer:
-- CSV:
-- Plain text format
-- Lightweight and faster to process
-- Preferred for large-scale ETL jobs

-- Excel:
-- Binary format with multiple sheets
-- Slower to process
-- Used for small datasets and manual reporting


/* ---------------------------------------------------------
   Question 4:
   Explain the steps involved in extracting data
   from a relational database.
   --------------------------------------------------------- */

-- Answer:
-- 1. Establish connection with the database
-- 2. Authenticate using credentials
-- 3. Write SQL queries to select required data
-- 4. Extract data in batches if dataset is large
-- 5. Store extracted data in staging area


/* ---------------------------------------------------------
   Question 5:
   Explain three common challenges faced
   during data extraction.
   --------------------------------------------------------- */

-- Answer:
-- 1. Data inconsistency across sources
-- 2. Performance issues with large datasets
-- 3. Network failures or connection timeouts


/* ---------------------------------------------------------
   Question 6:
   What are APIs?
   Explain how APIs help in real-time data extraction.
   --------------------------------------------------------- */

-- Answer:
-- APIs are Application Programming Interfaces
-- They allow systems to communicate with each other

-- Role in real-time extraction:
-- Enable live data access
-- Support real-time dashboards
-- Reduce dependency on batch jobs


/* ---------------------------------------------------------
   Question 7:
   Why are databases preferred for enterprise-level
   data extraction?
   --------------------------------------------------------- */

-- Answer:
-- Databases provide structured data
-- Support indexing and optimization
-- Ensure data integrity and security
-- Handle large volumes efficiently
-- Suitable for enterprise-scale ETL


/* ---------------------------------------------------------
   Question 8:
   What steps should an ETL developer take
   when extracting data from large CSV files (1GB+)?
   --------------------------------------------------------- */

-- Answer:
-- 1. Use chunk or batch processing
-- 2. Avoid loading entire file into memory
-- 3. Validate schema before extraction
-- 4. Log errors and rejected records
-- 5. Store data in staging tables
