Development
-----------

Hardware
````````

Main Machines
"""""""""""""
Hardware

============= ============= =========================
Part          Description   Notes
============= ============= =========================
HDD           2x SSD 256GB  1x OS, Packages. 1x Data
============= ============= =========================

Software



Backups
""""""""
Some sort of NAS

Virtual Machines
````````````````

Server
-------

Health Checks
`````````````
Installed via Apt.

- Disk free space metric
- Free memory metric
- CPU Usage metric

Software
""""""""
Software health checks verify that software is in an expected state, and allows the user make invalid an old version of software so that box can be scheduled for decommission, and a new box created with the updated package.

================== ==================
Purpose            Software
================== ==================
Web Server         Nginx
Log Forwarder      logstash-forwarder
================== ==================

Software Repositories
"""""""""""""""""""""

Debian
^^^^^^

================== ===============================================================================
Software           URL
================== ===============================================================================
Nginx              deb http://pkg.howden.io/ ./
Sensu              https://sensuapp.org/docs/latest/install-repositories
================== ===============================================================================

References
----------
