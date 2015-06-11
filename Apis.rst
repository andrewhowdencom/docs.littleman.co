====
Apis
====

Development
-----------

Parameters
``````````
- All parameters are to be supplied via the URL. Query string parameters are not acceptable
- All parameters need to be sent and returned with the same name. For example, 'email' != 'EmailAddress' - 'email' => 'email

Current Services
----------------
+------------+-----------+
| Service    | Monitored |
+============+===========+
| Twilio     | No        |
+------------+-----------+

Health Checks
-------------

REST 
++++

+---------------+-------------------+----------------------------------------+
| Check         | Sensu Package     | Description                            |
+===============+===================+========================================+
| Is 200        | http-status-check | Check whether the endpoint is alive    |
+---------------+-------------------+----------------------------------------+
