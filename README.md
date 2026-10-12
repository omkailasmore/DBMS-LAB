# 📚 DBMS Lab

**Database Management Systems Laboratory | MIT ADT University**

This repository contains my DBMS laboratory practicals, SQL queries, and database implementation exercises completed as part of my **B.Tech in Computer Science Engineering** at MIT ADT University, Pune.

The repository documents my hands-on learning of relational databases, SQL operations, database design, and stored procedures using MySQL.

## 🎯 Objectives

- Understand relational database concepts and architecture.
- Practice SQL queries for creating, modifying, and managing databases.
- Implement DDL, DML, and other SQL commands.
- Work with constraints, joins, views, subqueries, and SQL functions.
- Develop stored procedures for automating database operations.
- Strengthen practical database design and query-writing skills.

## 🛠️ Technologies Used

- **Database:** MySQL
- **IDE:** MySQL Workbench
- **Language:** SQL
- **Concepts:** Relational Database Management Systems (RDBMS)

## 📂 Repository Contents

The repository contains practical implementations and exercises covering topics such as:

| Topic | Description |
|---|---|
| Database & Table Creation | Creating databases, tables, and schemas |
| DDL Commands | `CREATE`, `ALTER`, `DROP`, `TRUNCATE` |
| DML Commands | `INSERT`, `UPDATE`, `DELETE` |
| Data Retrieval | `SELECT`, filtering, sorting, and grouping |
| Constraints | Primary keys, foreign keys, `UNIQUE`, `NOT NULL`, and `CHECK` |
| SQL Functions | Aggregate, string, numeric, and date functions |
| Joins | Combining data from multiple tables |
| Subqueries | Nested queries and conditional retrieval |
| Views | Creating and querying virtual tables |
| Stored Procedures | Automating database operations with reusable SQL routines |

*The exact topics and file organization may vary according to the practical assignments included in the repository.*

## 🚀 Getting Started

### Prerequisites

Install the following software:

- [MySQL Community Server](https://dev.mysql.com/downloads/mysql/)
- [MySQL Workbench](https://dev.mysql.com/downloads/workbench/)

### Running the SQL Scripts

1. Clone this repository:

   ```bash
   git clone https://github.com/omkailasmore/DBMS-LAB.git
   ```

2. Open MySQL Workbench and connect to your MySQL server.

3. Navigate to the required `.sql` file in the repository.

4. Open the script in MySQL Workbench.

5. Execute the SQL statements and verify the results in the output panel.

**Note:** Execute the scripts in the correct order whenever one practical depends on tables or data created by another.

## 💡 Example: Student Management System

One of the practical exercises involves managing student records using SQL and stored procedures.

**Table:** `Student`

| Column | Description |
|---|---|
| `student_id` | Unique student identifier |
| `student_name` | Student's name |
| `marks` | Marks obtained by the student |

The exercise demonstrates:

- `Update_Marks` — updates a student's marks.
- `Check_Result` — determines whether a student passes or fails, with 40 marks as the passing threshold.
- `Count_Students` — calculates the total number of student records.

Example procedure call:

```sql
CALL Update_Marks(3, 65);
CALL Check_Result(3);
CALL Count_Students();
```

## 📖 Learning Outcomes

Through these practicals, I am developing skills in:

- Writing and debugging SQL queries.
- Designing relational database schemas.
- Maintaining data integrity using constraints.
- Retrieving and manipulating structured data.
- Implementing reusable stored procedures.
- Understanding how database concepts are applied in real-world applications.

## 🎓 Academic Context

- **University:** MIT ADT University, Pune
- **Degree:** B.Tech in Computer Science Engineering
- **Subject:** Database Management Systems Laboratory

## 👨‍💻 Author

**
