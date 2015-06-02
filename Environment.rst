
Health Checks
-------------

Software
````````
Software health checks verify that software is in an expected state, and allows the user make invalid an old version of software so that box can be scheduled for decommission, and a new box created with the updated package.

================== ========
Software           Version
================== ========
Nginx              1.8.0
================== ========

Software Repositories
---------------------

Debian
``````
================== ===============================================================================
Software           URL
================== ===============================================================================
Nginx              deb http://nginx.org/packages/mainline/debian/ ``codename`` nginx [1]_
                   deb-src http://nginx.org/packages/mainline/debian/ ``codename`` nginx [1]_
================== ===============================================================================

References
----------
.. [#] Nginx.org,. (2015). nginx: Linux packages. Retrieved 2 June 2015, from http://nginx.org/en/linux_packages.html#stable
