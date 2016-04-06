Ideally, the below should be converted to sniffs.

General
-------

Immediate Rejection
```````````````````
- Hard coded passwords
- SSL keys
- SSH keys
- Api keys

Classes
-------

Smells
``````

Violation of the Law of Demeter
'''''''''''''''''''''''''''''''
Where a class extends another class it should have no knowledge lf that classes parents. Look for instances of invocations of methods in the "Grandparent" classes.

It has the advantage of creating more modular, loosly coupled software.

================== ===========
Sniff              PHPUnit
                   N
================== ===========

- http://en.wikipedia.org/wiki/Law_of_Demeter