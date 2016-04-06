------
Module
------

Admin
-----
- Ensure that the "Get help for this page" links to an appropriate documentation page

System → Configuration
----------------------
- Ensure that the configuration has a nice top bar (Use eBizMarts as a reference)
- Ensure that the logo appears in front of the menu 
- If a third party API service is required, make sure there's a "sign up" link and an "about" link in the nice top bar.

API Keys
````````
- API Keys are just as secret as passwords. Treat them as such.
- OAuth secrets are ... well, secret. 
- OAuth Client IDs are not secret.

Config.xml
----------

Events
``````
- To disable an event, use the "disabled" type used by Magento, rather than deleting or commenting out an event.

Local.xml
---------
- Heavily advised to have the "skip_process_module_updates" enabled, and run them with n98-magerun.phar

System(.xml)
------------
- All system configuration should have corresponding defaults in config.xml

Specific data guidelines
`````````````````````````

===================== ================================= ======
Type                  Guideline                         Secret 
--------------------- --------------------------------- ------
API Key               {service}_api_key                   ✓
OAuth Client ID       {service}_oauth_client_id
Oauth Client Secret   {service}_oauth_client_secret       ✓ 
====================  ================================= ======

