===
PHP
===

Canonical libraries
-------------------

============================= ===============================================
Purpose                       Ref
----------------------------- -----------------------------------------------
UUID Generation               https://github.com/ramsey/uuid
AMPQ                          https://github.com/videlalvaro/php-amqplib
Logging                       https://github.com/monolog/monolog
============================= ===============================================

Style Guide
------------

Ideally, convert these to lints.

Methods
'''''''

- Methods should have a single return type.
- There's probably a better return type than null.

SQL
'''

- Are there any "raw" SQL statements? Can they be replaced with a a PDO statement?

Data Sanitisation
'''''''''''''''''

- Are there any data sources entering the application? Is their input sanitized?

Exceptions
----------

- Do methods implement exceptions appropriately? That is,
  - Throw an error when an assumption is violated by calling code instead of handling the error
  - Implement the most accurate exception, subclassing if necessary

Tests
-----

Compatability
'''''''''''''

- Multiple PHP Versions

Structure
---------

Method
''''''
- Methods should be as flat as possible (so, instead of nesting a large set of logic inside an "if" statement, check the negative of that statement, and if it's present, return early)

Class
'''''

- Does it have a single responsibility? (that is, would everything inside it change for the same reason?)
