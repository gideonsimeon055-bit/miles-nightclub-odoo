FROM odoo:17.0

USER root

# Force Odoo to look at environment variables dynamically at runtime
ENTRYPOINT ["odoo", "--db_host=$(HOST)", "--db_user=$(USER)", "--db_password=$(PASSWORD)", "--db_port=$(PORT)", "--no-database-list"]
