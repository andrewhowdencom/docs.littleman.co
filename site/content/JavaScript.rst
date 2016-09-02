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

Console
-------

The JavaScript console is an extremely useful debugging tool for the browser. Further, it's rarely viewed by end-users unless they have a developer bent. So, as standard fare, a hiring notice should be displayed as part of the console. An example notice is below:

.. Code:: 

  ============
  We're hiring
  ============

  Hey, you've found the console! That's pretty cool. Are you seeing anything weird going on here? Help us fix it! 
  We're always looking for new engineers to help us improve our services. You can find more information on the 
  positions we have available at the URL below:

  https://www.littleman.co/careers/

  (Protip: This notice is pretty weird. That qualifies - so, apply!)

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

Directory Structure
-------------------

.. code:: bash

  # / = docroot
  /js/sw.js
  /js/sw-init.js
  /js/polyfills/{}
  /js/globals/{}
  /js/modules/{}

Polyfills
---------

https://github.com/Modernizr/Modernizr/wiki/HTML5-Cross-Browser-Polyfills

========================== =========================================================
Action                     Polyfill
-------------------------- ---------------------------------------------------------
Navigator.sendBeacon       https://github.com/miguelmota/Navigator.sendBeacon
Promise                    https://github.com/jakearchibald/ES6-Promises
========================== =========================================================

CustomEvent
"""""""""""

.. Code:: JavaScript

    (function () {
      if ( typeof window.CustomEvent === "function" ) return false;
        function CustomEvent ( event, params ) {
          params = params || { bubbles: false, cancelable: false, detail: undefined };
          var evt = document.createEvent( 'CustomEvent' );
          evt.initCustomEvent( event, params.bubbles, params.cancelable, params.detail );
          return evt;
       }

       CustomEvent.prototype = window.Event.prototype;

       window.CustomEvent = CustomEvent;
    })();

Reviewing
---------

Feature Detection
"""""""""""""""""

Specifically, is graceful degradation in place for APIs that the user:

- Might not have
- Might deny

Some common ones are: [a]_

- geolocation
- notifications
- push
- midi
- camera
- microphone
- speaker
- device-info
- background-sync
- bluetooth
- persistent storage

References
----------

.. [a]: https://w3c.github.io/permissions/#permission-registry

