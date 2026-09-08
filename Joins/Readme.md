# SQL Joins

This folder contains my **SQL JOIN practice and interview preparation**.

SQL JOINs are used to combine data from two or more tables using a related column between them. They are one of the most important SQL concepts for **Data Analyst and SQL interviews**.

---

## 📚 Topics Covered

* INNER JOIN
* LEFT JOIN
* LEFT OUTER JOIN
* RIGHT JOIN
* RIGHT OUTER JOIN
* ANTI JOIN
* JOIN with WHERE
* JOIN with GROUP BY
* JOIN with HAVING
* Table Aliases
* Joining Multiple Tables
* Practical SQL Problems

---

## 🔹 INNER JOIN

Returns only the rows that have matching values in both tables.

```sql
SELECT 
    e.emp_name,
    d.dept_name
FROM employee e
INNER JOIN department d
    ON e.dept_id = d.dept_id;
```

---

## 🔹 LEFT JOIN

Returns **all records from the left table** and matching records from the right table.

If there is no matching record, the right-side columns contain `NULL`.

```sql
SELECT 
    e.emp_name,
    d.dept_name
FROM employee e
LEFT JOIN department d
    ON e.dept_id = d.dept_id;
```

---

## 🔹 RIGHT JOIN

Returns **all records from the right table** and matching records from the left table.

```sql
SELECT 
    e.emp_name,
    d.dept_name
FROM employee e
RIGHT JOIN department d
    ON e.dept_id = d.dept_id;
```

---

## 🔹 ANTI JOIN

An Anti Join is commonly used to find records from one table that **do not have a matching record** in another table.

Example:

```sql
SELECT e.*
FROM employee e
LEFT JOIN department d
    ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;
```

This finds employees whose department does not have a matching record.

---

## 🔹 JOIN with WHERE

JOINs can be combined with `WHERE` to filter the joined result.

```sql
SELECT 
    e.emp_name,
    d.dept_name,
    e.salary
FROM employee e
JOIN department d
    ON e.dept_id = d.dept_id
WHERE e.salary > 60000;
```

---

## 🔹 JOIN with GROUP BY

JOINs can be combined with aggregate functions and `GROUP BY`.

```sql
SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS employee_count
FROM department d
LEFT JOIN employee e
    ON d.dept_id = e.dept_id
GROUP BY d.dept_name;
```

---

## 🔹 JOIN with HAVING

`HAVING` can be used to filter grouped results.

```sql
SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS employee_count
FROM department d
JOIN employee e
    ON d.dept_id = e.dept_id
GROUP BY d.dept_name
HAVING COUNT(e.emp_id) > 2;
```

---

## 📂 Files in This Folder

| File                                | Description                                   |
| ----------------------------------- | --------------------------------------------- |
| `Anti join.sql`                     | Practice queries for Anti Join                |
| `Joins(where +groupby +having).sql` | JOIN queries using WHERE, GROUP BY and HAVING |
| `left join left outer join.sql`     | LEFT JOIN and LEFT OUTER JOIN practice        |
| `right join.sql`                    | RIGHT JOIN practice                           |
| `Readme.md`                         | Documentation for SQL JOIN concepts           |

---


## 🧠 Key SQL Concepts

| Concept      | Purpose                                   |
| ------------ | ----------------------------------------- |
| `INNER JOIN` | Returns matching records                  |
| `LEFT JOIN`  | All left records + matching right records |
| `RIGHT JOIN` | All right records + matching left records |
| `WHERE`      | Filters rows                              |
| `GROUP BY`   | Groups records                            |
| `HAVING`     | Filters grouped results                   |
| `COUNT()`    | Counts records                            |
| `SUM()`      | Calculates total                          |
| `AVG()`      | Calculates average                        |
| `ON`         | Defines the JOIN condition                |

---

## 🛠️ Skills

* SQL
* Data Analysis
* Data Cleaning
* Relational Databases
* SQL Interview Preparation

---

## 👩‍💻 Author

**Saziya Alvi**

GitHub: [SAZIYA-ALVI](https://github.com/SAZIYA-ALVI)

---

⭐ **If you find this SQL practice repository useful, consider giving it a star!**

