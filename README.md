# GlobalMart Analytics Pipeline with dbt

## 📌 Project Overview

This project implements an end-to-end analytics engineering pipeline for **GlobalMart sales data** using **dbt (Data Build Tool)** and **PostgreSQL**.

The pipeline transforms raw transactional data into a dimensional model optimized for analytics and business intelligence reporting.

The project follows modern data engineering practices including:

* Data staging
* Dimensional modeling
* Automated testing
* Incremental loading
* CI/CD with GitHub Actions

---

## 🏗️ Architecture

```text
Raw Data (CSV/Source)
        │
        ▼
  stg_orders
        │
 ┌──────┼───────────────┐
 ▼      ▼       ▼      ▼
dim_region
dim_state
dim_category
dim_subcategory
dim_product
        │
        ▼
    fact_orders
```

---

## 📂 Project Structure

```text
models/
├── staging/
│   └── stg_orders.sql
│
├── dimensions/
│   ├── dim_region.sql
│   ├── dim_state.sql
│   ├── dim_category.sql
│   ├── dim_subcategory.sql
│   └── dim_product.sql
│
└── marts/
    └── fact_orders.sql
```

---

## ⭐ Data Model

### Staging Layer

#### `stg_orders`

The staging model cleans and standardizes raw sales data and generates surrogate keys using `dbt_utils.generate_surrogate_key()`.

Generated keys include:

* `region_id`
* `state_id`
* `category_id`
* `subcategory_id`
* `product_id`

---

### Dimension Tables

| Dimension         | Description                     |
| ----------------- | ------------------------------- |
| `dim_region`      | Stores unique sales regions     |
| `dim_state`       | Stores states linked to regions |
| `dim_category`    | Product categories              |
| `dim_subcategory` | Product subcategories           |
| `dim_product`     | Product information             |

---

### Fact Table

#### `fact_orders`

Captures transactional sales metrics including:

* Sales Amount
* Quantity
* Discount
* Profit
* Order Date
* Ship Date

The fact table links to all dimensions through surrogate keys.

---

## 🧪 Data Quality Tests

The project uses dbt tests to ensure data quality:

* `not_null`
* `unique`
* `relationships`

Example:

```yaml
columns:
  - name: state_id
    tests:
      - unique
      - not_null
```

---

## ⚙️ Technologies Used

* **dbt Core**
* **PostgreSQL**
* **Git & GitHub**
* **GitHub Actions**
* **SQL**
* **dbt-utils package**

---

## 🚀 Running the Project

Install dependencies:

```bash
dbt deps
```

Load seed data:

```bash
dbt seed
```

Build models:

```bash
dbt build
```

Run tests:

```bash
dbt test
```

Generate documentation:

```bash
dbt docs generate
dbt docs serve
```

---

## 🔄 CI/CD

The project uses **GitHub Actions** to automate:

* dbt builds
* data tests
* deployment checks

The pipeline executes automatically on every push and pull request.

---

## 📈 Future Improvements

* Add snapshots for Slowly Changing Dimensions (SCD)
* Implement source freshness checks
* Deploy to cloud warehouses
* Integrate BI tools such as Power BI or Tableau

---

## 👨‍💻 Author

**Bonventure Bunde**

Analytics Engineer | Data Engineer | dbt Enthusiast

Building scalable data pipelines and modern analytics solutions using dbt and SQL.

