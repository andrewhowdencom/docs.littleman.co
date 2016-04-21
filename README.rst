Project Outline
----------------
Provide some handy documentation that is simple to update. It's deployed by
travis.

- Namespace: docs-littleman-co

Limitations
```````````
This list also constitutes a todo.

- It's pretty ugly
- The notes are extremely shorthand. If you're looking for clarification, open
  an issue.

Alerting Policies
`````````````````

======================= ===============================================
Policy                  Description
----------------------- -----------------------------------------------
GET / (https) not 200   Check whether the HTTPS homepage is working
GET / (http) not 302    Check whether the site is redirecting from HTTP
======================= ===============================================

Summary
```````
============= ============ ==============
License       Code Style   Code Locale
------------- ------------ --------------
Apache-2      Zend         en-AU [lang]_
============= ============ ==============

Installation
-------------

Requirements
````````````
 - kubectl
 - gcloud

Steps
`````
- See the .travis.yml file. Everything is kicked off from there.

Usage
-----
- Visit docs.littleman.
- ???
- Profit

Thanks
------
- The authors of the Hugo static site generator

Contributing
------------
Contributions are always welcome! I mirror my work on GitHub, however, if you'd
like to [open an issue](https://github.com/andrewhowdencom/docs.littleman.co)
i'd love the feedback!

References
-----------
.. [lang] Lingoes.net,. (2015). Language Code Table. Retrieved 4 June 2015, from http://www.lingoes.net/en/translator/langcode.htm
