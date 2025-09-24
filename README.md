# 🏗️ Material Project Database – Normalization & Implementation  

## 📌 Project Overview  
This project focuses on designing and implementing a **relational database system** for managing *Material Sample Submission Forms* in construction projects.  
The workflow includes:  
- Understanding raw form data (un-normalized).  
- Identifying anomalies (insert, update, delete).  
- Applying normalization (1NF → 3NF).  
- Implementing the refined database schema in **MySQL**.  

This database ensures that material submissions (e.g., cement, steel, tiles, etc.) are properly recorded, reviewed, and approved by contractors, consultants, and project owners.  

---

## 📂 Database Schema  

The final database (after 3NF) consists of **three main tables**:  

1. **`PKPROJECT005`** → Submission details (NoPengajuan, Kontraktor, Paket, Evaluasi, Follow-up).  
2. **`BahanMaterial`** → Material details (Kode, Nama, Supplier, Lokasi, Reference).  
3. **`TypeProduk`** → Product type details (TypeMaterial, Project, Reference RKS, Floor).  

🔗 **Relationships**:  
- Each submission (`PKPROJECT005`) links to one material (`BahanMaterial`) and one type (`TypeProduk`) using foreign keys.  
- This eliminates redundancy and ensures data integrity.  

---

## ⚠️ Anomalies Identified  
Before normalization, the dataset suffered from:  
- **Insert anomaly** → New projects couldn’t be added without all details.  
- **Update anomaly** → Changes in material repeated across rows caused inconsistency.  
- **Delete anomaly** → Deleting one record could remove other essential data.  

By applying normalization up to **3NF**, these anomalies were resolved.  

---

## 🛠️ Implementation (MySQL)  
The database was implemented using **MySQL**.  

Key features:  
- **Primary Keys**: `NoPengajuan`, `Kode`, `TypeMaterial`.  
- **Foreign Keys**: Relationships between submissions, materials, and product types.  
- **Atomic values & integrity**: All attributes are atomic, no redundancy.  

You can find the full SQL script here: [`material_proyek.sql`](./material_proyek.sql)  

---

## 📊 Example Data  
Sample materials included in the database:  
- 🧱 Cement (*Semen Tiga Roda*)  
- 🪨 Batu Kali (*20–30 cm*)  
- 🔌 Electrical materials (*Lampu LED 10 Watt, Kabel NYM*)  
- 🪟 Finishing materials (*Keramik, Granit, Marmer*)  

Each material is linked with suppliers, project references, and approval status.  

---

## ✅ Conclusion  
The refined database successfully:  
- Removes redundancy through **3NF normalization**.  
- Resolves insert, update, and delete anomalies.  
- Provides a clear structure for managing material submissions in construction projects.  
- Ensures efficient relationships between **contractors, materials, and project types**.  

This makes it reliable for real-world use in construction project documentation and approval workflows.  

---

## 👥 Team Members  
- Elizabeth Evangeline Martin  
- Gabriella Widjaja  
- Stacie Monica  
- Syalista Galuh Nadira  
