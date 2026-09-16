# 🍾 Mile's Nightclub ERP - Cloud Deployment

An enterprise-grade Odoo ERP system built for **Mile's Nightclub**, migrated from local development to a global, scalable cloud architecture. This deployment features fully functional modules for VVIP/VIP section management, automated waiter order entry, real-time bartender operations, and management dashboards.

## 🚀 Live Deployment Information
* **Production Live URL:** `https://onrender.com` *(Pending Render Activation)*
* **Assessor Access Credentials:**
  * **Username:** assessor@swone.com
  * **Password:** SWOne2026!

## 🏗️ Architecture & Cloud Stack
* **Core Application Server:** Odoo 17.0 (Deployed via Docker Container on Render PaaS)
* **Database Management System:** Cloud PostgreSQL (Hosted securely on Supabase)
* **Version Control & CI/CD Pipeline:** GitHub Integration

## 🛠️ Step-by-Step Deployment Steps
To replicate this cloud migration environment, execute the following configuration pipeline:

### 1. Database Provisioning (Supabase)
* Provision a new PostgreSQL instance on the Supabase cloud infrastructure.
* Extract the global connection string URI from `Project Settings -> Database`.

### 2. Application Packaging (GitHub Containerization)
* Create a production `Dockerfile` in the root repository path to package the Odoo framework dependencies:
  ```dockerfile
  FROM odoo:17.0
  USER root
  EXPOSE 8069
  CMD ["odoo"]
  ```

### 3. Application Deployment & Environment Integration (Render)
* Connect this GitHub repository directly to the Render cloud platform.
* Configure the service execution runtime to **Docker** on the Free Tier instance.
* Map the cloud database credentials securely into the platform's Environment Variables panel using isolated keys to completely eliminate hardcoded passwords in version control:
  * `HOST` = `[Your-Supabase-Database-Host-URI]`
  * `USER` = `postgres`
  * `PASSWORD` = `[Your-Secure-Supabase-Password]`
  * `PORT` = `5432`

### 4. Database Restoration & Verification
* Access the production URL web interface.
* Initialize the system and utilize the Odoo database engine tools to restore the local `Mile's Nightclub` configuration package.
* Generate the mandatory assessment record structures to confirm full operational capacity.
