# Cybersecurity Alert Log (SQL)

This project logs security alerts and links them to users or systems (entities). It helps monitor critical alerts and identify high-risk users or devices.

## Features
- Alert severity classification
- Resolution tracking
- Reporting queries (e.g. unresolved critical alerts)

## Files
- `schema.sql` – Tables for entities and alerts
- `queries/` – Examples to triage and investigate alerts

sql-projects/
└── cyber-alert-log/
    ├── schema.sql
    ├── README.md
    └── queries/
        ├── alert_count_by_severity.sql
        ├── top_entities_by_alerts.sql
        └── unresolved_critical_alerts.sql
