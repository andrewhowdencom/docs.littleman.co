Validation on Log Aggregation
-----------------------------

Nginx
``````
You should be looking for log aggregation examples in version control. However, general guidelines are as follows:

- Ensure all non public resources do not respond with a 1xx/2xx request (For example, /admin, /sass etc)

Magento
````````
This is a note, and should be translated into version control

Non Public Resources
"""""""""""""""""""""
- app/
- var/
