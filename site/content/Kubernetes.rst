==========
Kubernetes
==========

Consistently use the abbreviations, where they're provided.

Naming Standards
----------------

======================== ====================================== =================================================
Name                     Standard                               Example
------------------------ -------------------------------------- -------------------------------------------------
Secrets                  {app}-{filepath}
Files                    {load-order}-{service}-{resource-type} 10-kube-system.ns.yml, 30-skydns.rc.yml
======================== ====================================== =================================================

Order of Application
--------------------

The Kubernetes assets must be created in an order, so when they're run against a fresh cluster, and old cluster, or 
a half installed cluster they function as expected. The order is defined by the filename, formatted as follows::

    {number}-{filename}.yml

The order is as follows:

======== ============== ================================================
Number   Type           Examples
-------- -------------- ------------------------------------------------
10       Machines       nodes
20       Setup          namespace, daemonset, serviceaccount
40       Data           config, secret
50       Processes      deployment, rc, jobs
======== ============== ================================================

Tagging Standards
------------------

======================= ========================================
tag                     values
----------------------- ----------------------------------------
application             nginx,php5-fpm
role                    interpreter,webserver,database
======================= ========================================
