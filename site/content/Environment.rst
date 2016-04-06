=============
Machine Types
=============

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
--------

Try and use open source as much as possible.

============ =============================================
Part         Description
------------ ---------------------------------------------
OS           Arch Linux
CLI          jq (https://github.com/stedolan/jq/releases)
============ =============================================

Backups
""""""""
- Development environments need to be disposable; Any permanent data should be in another system, with a managed backup. 

Virtual Machines
````````````````

Server
-------

Health Checks
`````````````

==================== ================================ ==========================
Metric               Alerting Criteria                Condition Time
-------------------- -------------------------------- --------------------------
Disk free space      > 80% full | < 1gb free
Free memory metric   > 90% full                       2 minutes
CPU Usage metric     > 85% full                       30 seconds
==================== ================================ ==========================

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
