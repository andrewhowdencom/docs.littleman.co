Canonical JavaScript Stacks
---------------------------

- Dependency Management
  - [Core] http://requirejs.org/
- Disabling double tap on mobile
  - Modify the viewport, wrap in feature detection
  - [Polyfill] Fastclick
- Form Validation
  - None. Use HTML5 form validation.
- [if] jQuery
  - https://github.com/wilsonpage/jquery-fastdom
- Logging
  - [Core] https://github.com/pimterry/loglevel
  - [Core] https://github.com/miguelmota/Navigator.sendBeacon
- Dom Manipulation
  - [Core] https://github.com/wilsonpage/fastdom
- Carousel 
  - Don't use a carousel
  - http://kenwheeler.github.io/slick/
- Click to copy
  https://zenorocha.github.io/clipboard.js/
- Slide shows
  https://github.com/hakimel/reveal.js/
- GPG https://github.com/openpgpjs/openpgpjs/releases

Experimental JavaScript libraries
---------------------------------

Docblocks
---------

Use the JSDoc standard, with a few differences:

Additional Tags
"""""""""""""""


================== ========================================= =============================================================
Tag                Purpose                                   Example
------------------ ----------------------------------------- -------------------------------------------------------------
@depends           Show which objects are required           @depends jQuery.affix (bootstrap/affix.js)
================== ========================================= =============================================================

Naming
------

================ ============================================ =======================================
Topic            Standard                                     Example
---------------- -------------------------------------------- ---------------------------------------
Events           {action}.{vendor_initials}.{plugin}          show.bs.modal, start.lm.postcode
================ ============================================ =======================================

Canonical Terms
---------------

=========== ============================ ===============================
Term        Alternatives                 Notes
----------- ---------------------------- -------------------------------
start       dispatch, request            Ajax query dispatch
=========== ============================ ===============================

Developing a plugin
-------------------
- Use events rather than method handles to provide methods to "hook into" the plugin
- Allow default configurations to be overwritten with the data-{whatever} flags
- Make compatible as AMD or Browserify module (the jQuery mousewheel has a good example for this)

Polyfills
---------

========================== =======================================
Action                     Polyfill
-------------------------- ---------------------------------------
Navigator.sendBeacon       https://github.com/miguelmota/Navigator.sendBeacon
Promise                    https://github.com/jakearchibald/ES6-Promises
========================== =======================================
