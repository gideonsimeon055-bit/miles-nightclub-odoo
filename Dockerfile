FROM odoo:17.0

USER root

# Expose the correct port
EXPOSE 8069

# Use normal CMD without the parenthesis mapping
CMD ["odoo"]
