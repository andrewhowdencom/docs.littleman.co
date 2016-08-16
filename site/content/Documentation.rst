=============
Documentation
=============

Notice
------

People getting to documentation is essentially a kind of failure - the application wasn't simple or clear enough that they could intuitively work it out. We want to avoid such failures - make a notice at the top of all documentation that says "We're sorry you had to come here. Please, help us work out how to avoid having to consult the docs"

The preferred documentation syntax is ReST, as is quite a bit richer.

Contribution
------------

Amending existing content
'''''''''''''''''''''''''

- Discuss with the previous content author prior to Schema

Titles
''''''

+--------------+---------------------------------------+----------------------------------+
| Structure    |  RST Syntax                           |  Markdown Syntax                 |
+==============+=======================================+==================================+
| h1           |  .. code:: ReST                       | .. code::                        |
|              |                                       |                                  |
|              |     =====                             |     # Title                      |
|              |     Title                             |                                  |
|              |     =====                             |                                  |
|              |                                       |                                  | 
+--------------+---------------------------------------+----------------------------------+
| h2           | .. code:: ReST                        | .. code::                        | 
|              |                                       |                                  |
|              |     Heading 2                         |     ## Heading 2                 | 
|              |     ---------                         |                                  | 
|              |                                       |                                  | 
+--------------+---------------------------------------+----------------------------------+
| h3           | .. code:: ReST                        | .. code::                        |
|              |                                       |                                  |
|              |     Heading 3                         |     ### Heading 3                |
|              |     '''''''''                         |                                  | 
|              |                                       |                                  | 
+--------------+---------------------------------------+----------------------------------+
| h4           | .. code:: ReST                        | .. code::                        |
|              |                                       |                                  |
|              |     Heading 4                         |     #### Heading 4               |
|              |     """""""""                         |                                  |
|              |                                       |                                  |
+--------------+---------------------------------------+----------------------------------+

References
``````````
- Use Harvard style in-text and article referencing

+--------------+---------------------------------------+----------------------------------+
| Structure    |  RST Syntax                           |  Markdown Syntax                 |
+==============+=======================================+==================================+
| Heading      | .. code:: ReST                        | Undocumented.                    |
|              |                                       |                                  |
|              |     **Heading 2**                     |                                  |
|              |                                       |                                  |
+--------------+---------------------------------------+----------------------------------+
| In software  | .. code:: ReST                        | Undocumented.                    | 
| menu item    |                                       |                                  |
|              |    ``System → Configuration``         |                                  | 
|              |                                       |                                  | 
+--------------+---------------------------------------+----------------------------------+  

Examples
''''''''

+--------------+---------------------------------------+----------------------------------+
| Structure    |  RST Syntax                           |  Markdown Syntax                 |
+==============+=======================================+==================================+
| Code block   | .. code:: ReST                        | Undocumented                     |
|              |                                       |                                  |
|              |     ..Code::                          |                                  |
|              |         ./mage install-file {package} |                                  |
|              |                                       |                                  |
|              | You'll need a space between '..' & 'C'|                                  |
+--------------+---------------------------------------+----------------------------------+

