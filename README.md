# AWS ETL POC – S3 + Lambda + Glue

This Proof of Concept (POC) demonstrates an **ETL pipeline** using AWS services with Terraform for automation.

---

## 🚀 Architecture Overview

1. **S3 Bucket (Raw Zone)** – Stores raw input files uploaded by users or applications.  
2. **Lambda Function** – Triggered automatically when a new file is uploaded to S3. It performs lightweight transformations and/or triggers AWS Glue jobs.  
3. **Glue ETL Job** – Processes and transforms the data, then writes the cleaned data to the **S3 Processed Zone**.  
4. **S3 Bucket (Processed Zone)** – Stores transformed/curated data for analytics or downstream consumption.  

---

## 📊 Architecture Diagram

![Architecture Diagram](A_diagram_in_digital_vector_illustration_depicts_a.png)

---

## 🔄 Sequence of Events

1. A file is uploaded to the **Raw S3 bucket**.  
2. The **S3 event notification** triggers the **Lambda function**.  
3. Lambda validates and optionally preprocesses the data.  
4. Lambda triggers the **Glue job** for ETL processing.  
5. Glue transforms and stores the output into the **Processed S3 bucket**.  

---

