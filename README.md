# 🏗️ SQL Server Data Warehouse Project

This project demonstrates the construction of a **modern Data Warehouse** using **Microsoft SQL Server**. It encompasses a complete **ETL (Extract, Transform, Load) pipeline**, batch processing, and analytics, following the **Medallion Architecture (Bronze, Silver, Gold layers)**.

The implementation is inspired by **Baraa Khatib Salkini’s tutorials** on data warehousing.

---

## 📁 Project Structure

* **Bronze Layer**

  * Extracted and loaded **CRM** and **ERP** data from CSV files into **staging tables**.
  * Implemented **full-load batch processing** for initial ingestion.

* **Silver Layer**

  * Built the **Integration Model** with data cleansing, transformation, and normalization.
  * Designed reusable **stored procedures** for data transformations.
  * Established a **data catalog** for structured metadata and improved discoverability.

* **Gold Layer**

  * Modeled business-ready data into a **Star Schema** for reporting and analytics.
  * Optimized for performance using **views, indexing strategies, and partitioning**.

---

## ⚙️ Technologies Used

* **Database**: Microsoft SQL Server
* **ETL Tools**: T-SQL scripts, SQL Server Integration Services (SSIS)
* **Data Sources**: CSV files
* **Analytics**: SQL-based reports and dashboards

---

## 🎯 Objectives

* Implement a structured **ETL pipeline** using T-SQL and SSIS.
* Support **batch processing** with **full-load strategies** for raw data ingestion.
* Apply the **Medallion Architecture (Bronze, Silver, Gold)** for layered data processing.
* Use **stored procedures** for modular and reusable ETL logic.
* Maintain a **data catalog** for clear lineage and data definitions.
* Design a **Star Schema** for business intelligence and analytics.
* Optimize performance with **views, indexes, and query tuning**.
* Provide a **scalable and extensible** data warehouse model.

---

## 📚 Resources

* **YouTube Channel**: [Data with Baraa](https://www.youtube.com/@DatawithBaraa)
* **Tutorial Video**: *SQL Data Warehouse from Scratch | Full Hands-On Data Engineering Project*
