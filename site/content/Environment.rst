=============
Machine Types
=============

Development Machine
-------------------

============= ============= =========================
Part          Description   Notes
============= ============= =========================
HDD           2x SSD 256GB  1x Windows, 1x Linux
============= ============= =========================

Design
''''''

Boot (GRUB 2)
"""""""""""""

Managed by a script. Script as follows::

    # Todo: Write that script
    # Should have hostname
    # Should have instructions on where to get help
    # Should have the company website
    # Should have a reminder that machines are disposable, and will be overwritten without warning.


Desktop Environment
"""""""""""""""""""

Users can do whatever they like. If they fuck the machine up, reflash it.

Security
--------

- Disable root login
- All users must have a Yubikey, and must log in with it with HMAC-SHA1 challenge-response

SSH
"""

Disable password SSH::

    # /etc/sshd/ssh_config
    ChallengeResponseAuthentication no
    PasswordAuthentication no

Software
--------

Try and use open source as much as possible.

============ =====================================================================
Part         Description
------------ ---------------------------------------------------------------------
OS           Debian Linux
Desktop      GNOME 3
CLI          jq (https://github.com/stedolan/jq/releases)
CLI          git scmpuff (https://github.com/mroth/scmpuff)
CLI          lego (https://github.com/xenolf/lego)
--
boilr
httpstat
git
vim
PHPStorm
eslint
yamllint
============ =====================================================================

Backups
""""""""

- Development environments need to be disposable; Any permanent data should be in another system, with a managed backup. Git usually serves a good purpose here.

Server
-------

Types
"""""

Largely, the different services should be managed as Kubernetes structures, rather then assigning a service to a given Machine.

============= ================================================================
Type          Purpose
------------- ----------------------------------------------------------------
Application   Runs the application. No user supplied content (even logs!)
User Content  A service that holds used supplied content
============= ================================================================


Health Checks
"""""""""""""

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
Metrics / Health   Sensu
================== ==================

Software Repositories
"""""""""""""""""""""

References
----------
