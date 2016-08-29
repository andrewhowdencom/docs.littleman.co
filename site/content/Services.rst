========
Services
========

Notes on the development and usage of various consumable services, usually through a REST API

<!--more-->

Development
-----------

Request
'''''''

- All parameters are to be supplied via the URL. Query string parameters are not acceptable
- All parameters need to be sent and returned with the same name. For example, 'email' != 'EmailAddress' - 'email' => 'email
- Dont use auto increment IDs in the URL (or, indeed, anything publicly facing):
  - It invites scraping.
  - It shows competition how many of a given object your client has.

Response
''''''''

Errors
""""""

- If it's an anticipated error (such as an authentication error), provide a link to documentation where a person can read further about that error. 
- (JavaScript) Log the aforementioned URL to the console.

Current Services
----------------

============= ============
Service       Monitored
============= ============
Twilio        No
============= ============

Health Checks
-------------

REST
''''

================ =================== =========================================
Check            Sensu Package      Description
================ =================== ========================================
Is 200           http-status-check  Check whether the endpoint is alive
================ =================== ========================================
