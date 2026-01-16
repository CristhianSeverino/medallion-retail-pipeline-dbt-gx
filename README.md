# medallion-retail-pipeline-dbt-gx
End-to-end retail ERP data pipeline: demonstrating scalable, governed, and production-ready data engineering patterns.
# dbt-retail-medallion-gx

Modern ELT Pipeline with Medallion Architecture, Kimball Modeling, and Data Quality Gates

[![Python](https://img.shields.io/badge/Python-3.12-blue?logo=python&logoColor=white)](https://www.python.org/)
[![dbt](https://img.shields.io/badge/dbt-Core-orange?logo=dbt&logoColor=white)](https://www.getdbt.com/)
[![Great Expectations](https://img.shields.io/badge/Great%20Expectations-1.11.0-blueviolet)](https://greatexpectations.io/)
[![DuckDB](https://img.shields.io/badge/DuckDB-Local%20Engine-yellow)](https://duckdb.org/)

**End-to-end retail ERP data pipeline** demonstrating scalable, governed, and production-ready data engineering patterns.

### Key Features

- **Medallion Architecture** (Bronze → Silver → Gold) implemented with **dbt Core + DuckDB**
- **Kimball dimensional modeling** (fact/dimension tables, star schema) for business analytics
- **Proactive data quality gates** with **Great Expectations** (intentional anomalies detected: negatives, invalid IDs, zero metrics)
- **Exportable gold layers** (Parquet + CSV) for BI/ML consumption
- **Fully local & reproducible** — zero cloud cost, portable to Snowflake/Redshift/BigQuery by changing adapter
- **CI/CD ready** — GitHub Actions workflow for linting, run, test & docs generation

### Business Value

- 250% profitability increase & 75% cycle time reduction (achieved in real freelance projects)
- Governance & quality controls to avoid downstream impacts (12% cost reduction via optimized pipelines)
- Client-facing pattern: translates business needs into cost-efficient technical roadmaps

### Architecture Overview

1. **Bronze** – Raw ingestion of synthetic ERP data (CSV → DuckDB)
2. **Silver** – Cleaning, incremental loads, data validation
3. **Gold** – Aggregated KPIs (revenue, profit, YoY growth) with Kimball star schema
4. **Quality Gates** – Great Expectations on gold outputs (detects anomalies intentionally introduced)
5. **Export** – Gold layers as Parquet & CSV in `golden_export/` folder

### Tech Stack

- dbt Core (ELT orchestration)
- DuckDB (local analytical engine – adapter dbt-duckdb)
- Great Expectations (data quality & governance)
- Python / Pandas (data generation & export)

### Getting Started

1. Clone the repo
   ```bash
   git clone https://github.com/CristhianSeverino/medallion-retail-pipeline-dbt-gx.git
   cd medallion-retail-pipeline-dbt-gx
   ```
2. Install Dependencies
    ```bash
    pip install dbt-core dbt-duckdb pandas great-expectations
    ```
3.Run the pipeline
   ```bash
   cd sales_analytics
    dbt deps
    dbt run
    dbt test
    dbt docs generate
    dbt docs serve
   ```
4. View exported gold layers
   * /golden_export/*.parquet (columnar, efficient)
   * /golden_export/*.csv (easy for BI tools)

### Demo Highlights

Synthetic ERP data with intentional anomalies (negative quantities, invalid location IDs, zero revenue) to test governance
Great Expectations fails intentionally (success=False) — shows real quality gate behavior
dbt docs & GX Data Docs generated locally

### Key Takeaways

Portable architecture: same dbt code runs on Snowflake/AWS by changing adapter
Governance-first pipeline: dbt tests + GX for proactive quality
Export-ready gold layers: immediate consumption by Power BI, Looker, or ML pipelines

### About the Author
**Cristhian Calle Severino**
Senior Solution Architect | BI Lead | Data Strategist
8+ years designing scalable data platforms (AWS, Snowflake, dbt, GX)
Proven impact: 250% profitability increase, 75% cycle time reduction, 12% cost savings via optimized pipelines
Connect:

* **LinkedIn:** https://www.linkedin.com/in/cristhianandrescalleseverino/
* **GitHub:** https://github.com/CristhianSeverino
* **Portfolio:** https://sites.google.com/view/cristhiancalle
* **Email:** cristhian.calle1@gmail.com

Feedback, questions, or collaboration? Feel free to reach out! ☕

