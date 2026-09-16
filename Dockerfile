FROM odoo:17.0

USER root

# Expose Odoo's web port
EXPOSE 8069

# Set the default command to run Odoo
CMD ["odoo"]
