Inputs
------

Summary
-------

Linter: https://validator.github.io/validator/#usage
Linter: https://github.com/htmllint/htmllint

Can that input be replaced with a simpler version? (text with select, select with radio etc)

Forms
-----

Is the data validated with HTML5 form validation?

Validation
----------

Does the validation contain clear instructions (and an example) on how to address the issue?

HTTP
----

(in order)

- Content Type
- X-UA-COMPATIBLE

Head
----

Order of elements:
``````````````````

#. Any javascript that **just initializes some variables** [(Grigorik 2015)]
#. The single CSS file [(Grigorik 2015)]
#. Everything else

Cache Busting
`````````````

#. Current thinking is files should be generated and committed to the repository, rather then generated on the fly. Further, the cache bust should only increment when an update to a given file has changed, rather than just when theres a new deployment (there are those all the time!)

Loading
-------

#. During load, add "aria-busy". Remove it with dom ready.

Markup
------

#. Keep the markup simple. This makes it less conceptually complex, janky and it renders faster.

Review
------

Server Side Content
-------------------

#. Ensure all data from an external source (that is, data not constructed in the application) is sanitized
#. Ensure that all data that hits the the templates is explicitly required (that is, don't dump data from object)

References
----------

.. [(Grigorik 2015)] Grigorik, I. (2015). Script-injected "async scripts" considered harmful - igvita.com. [online] Igvita.com. Available at: https://www.igvita.com/2014/05/20/script-injected-async-scripts-considered-harmful/ [Accessed 9 Nov. 2015]
