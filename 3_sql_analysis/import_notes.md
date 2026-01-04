# Data Import & Validation Notes

## Context
This project analyzes customer churn data in a telecommunications environment.  
To ensure analytical reliability, raw data ingestion and validation were handled as a distinct, auditable step before any business logic or KPI derivation.

---

## Data Ingestion
- Source format: CSV
- Tooling: PostgreSQL + DBeaver
- Target table: `customer_raw`

The dataset was imported into PostgreSQL using DBeaver’s native CSV import functionality.  
No transformations, derived fields, or business logic were applied during import in order to preserve raw data traceability.

---

## Schema Validation
Post-import checks were performed to confirm successful ingestion and structural integrity:

- Row count validation
- Sample record inspection
- Column presence and ordering verification

Numeric fields (`tenure`, `seniorcitizen`, `monthlycharges`, `totalcharges`) were verified to be stored using appropriate numeric data types to support aggregation and KPI calculations.

---

## Design Rationale
The raw data layer (`customer_raw`) is intentionally kept free of analytical logic.  
All flags, segmentations, and business rules are derived later in a dedicated analytics table (`customer_analytics`).

This separation:
- Preserves data lineage
- Improves reproducibility
- Aligns with real-world analytics engineering practices

---

## Next Step
Following successful ingestion and validation, the data is transformed into an analytics-ready structure to support KPI analysis and BI dashboards.
