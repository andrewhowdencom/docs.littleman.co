================
Innovations
================

These are cool ideas I'm never going to get to.

Lazy loaded polyfills
---------------------

.. Code:: JavaScript

    window.fetch = function() {
        var fetch = require('polyfills/fetch');
        window.fetch = fetch;
       return fetch;
    }
