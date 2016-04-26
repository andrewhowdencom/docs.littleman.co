=======
Magento
=======

Events
------

Magento seems to handle the firing of events pretty intelligently, dispatching a new event after events that manipulate an objects data. 

Naming Standard
---------------

Magento allows you to define an event prefix for events. This should be the module name (`{vendor}_{extension_name}`)

============================= ============================================================= ==============================================================
Usage                         Standard                                                      Data
----------------------------- ------------------------------------------------------------- --------------------------------------------------------------
Prior to a validation         {prefix}_validate_before                                      `array('object' => ${Validation Object})`
After a validation            {prefix}_validate_after                                       `array('object' => ${Validation Object}, 'isValid' => {bool})`
============================= ============================================================= ==============================================================

Tools
-----
Factory method type hinting: https://github.com/Vinai/phpstorm-magento-mapper


Try not to use the folder. Magento related stuff should go in here.

Templates
---------
See HTML.rst

Product Collections
-------------------
- Should the products be filtered by the current store scope?

Suggested Modules
-----------------

============================================================ ============================================================ ===================================================
Where                                                        What                                                         Why
------------------------------------------------------------ ------------------------------------------------------------ ---------------------------------------------------
https://github.com/ericthehacker/magento-phpnativepasswords  PHP Native password hashing                                  Magento uses MD5 natively (It's insecure)
============================================================ ============================================================ ===================================================
