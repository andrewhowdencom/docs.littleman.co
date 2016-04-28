================================
Factory Pattern JavaScript file
================================

Todo
----
- Allow disabling whatever plgin (just provide a method that's like obj.disable());
- It would be nice to introduce a soft dependency on FastDom (or just include the requestAnimationFrame API). See http://xion.io/post/code/requirejs-optional.html
- Implement and test the common.js dependency pattern. https://raw.githubusercontent.com/antennaio/jquery-bar-rating/master/jquery.barrating.js
- I think the jQuery requirement is incorrect.
- Allow conditional loading of plugin. Like, if you have no artifacts with the DOM API (for example), don't bother loading all the dependencies. For jQuery API's might need to implement some sort of lazy load

.. code:: JavaScript

   /**
    * Copyright (c) 2015 littleman.co
    *
    * Permission is hereby granted, free of charge, to any person obtaining a copy
    * of this software and associated documentation files (the "Software"), to deal
    * in the Software without restriction, including without limitation the rights
    * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    * copies of the Software, and to permit persons to whom the Software is
    * furnished to do so, subject to the following conditions:
    *
    * The above copyright notice and this permission notice shall be included in
    * all copies or substantial portions of the Software.
    *
    * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    * THE SOFTWARE.
    */

   /**
    * A skeleton function for defining a JS module. Benefits
    *
    * - It's dependency manager friendly
    * - It keeps things of a similar responsiblity in the same place, and encourages you to think about a (programmatic) API with a JS Moduile
    * - If you concatenate your JS (ewww. Use H/2) it keeps everything from exploding, and allows you to use 'use strict'.
    */
    function(root, definition) {
       'use strict';

       if (typeof module === 'object' && module.exports && typeof require === 'function') {
           // Common JS
           module.exports = definition();
           // ^^ The above has absolutely never been tested. I'm not even sure how dependencies are declared.

           // AMD, Require.js
       } else if (typeof define === 'function' && typeof define.amd === 'object') {
           define(function(require) {
               var $ = require('jQuery'); // An example dependency
               return definition($)
           });

           // If there are no dependencies, `define(definition);` works just fine.
       } else {
           // Expose the global here; // Todo: You should rename this to something logical. Also, it's not a really
           // good idea to pollute the global namespace.
           root.obj = definition();
       }
    (this, function($) {
       'use strict';

       var noop = function() {};

       /**
        * Blurb indicating what this plugin is supposed to be used for.
        *
        * @param {String} action
        * @param {Object} options
        * @constructor
        */
       var Plugin = function(action, options) {
            this.options = this.mergeObject(Plugin.DEFAULTS, options);
       }

       Plugin.DEFAULTS = {
           optionA: 'foo',
           optionB: 'bar'
       }

       /**
        * Does a shallow merge of two objects 
        *
        * @param {Object} obj1 The object to combine with
        * @param {Object} obj2 The object to overwrite obj1
        * @return {Object} The amended object
        */
       Plugin.prototype.mergeObject = function(obj1, obj2) {
           // Todo: Type checking of both objects
           var returnObj = {};

           // Repeat merge
           for (var attrName in obj1) {
               returnObj[attrName] = obj1[attrName];
           }

           for (var attrName in obj2) {
               returnObj[attrName] = obj2[attrName];
           }
       }

       /**
        * @param {String} arg
        * @return {Void}
        */
       Plugin.prototype.method = function(arg) {
       }

       // Check if the dependency has loaded. A dependency will exist within whatever scope it's defined (currently,
       // my understanding is the "best" method is within an AMD closure).
       if (typeof $ === 'undefined') {
           return noop;
       }

       return Plugin;
    ));

    **
    * An example function factory implementation with a jQuery plugin. Also includes some notes on jQuery best practices
    */
    function(root, definition) {
       if (typeof module === 'object' && module.exports && typeof require === 'function') {
           // Common JS
           module.exports = definition();
       } elseif (typeof define === 'function' && typeof define.amd === 'object') {
           define(function(require) {
               var $ = require('jQuery');
               return definition($);
           })
       }

       'use strict';
    )(this, function($) {
       'use strict';
       var noop = function() {};

       if (typeof $ === 'undefined') {
           return noop();
       }

       // This isn't very good yet, as there's nothing here! Shock horror. Later, there'll be some jQuery specific stuff. 
       // Todo: Check a plugin exists
       // Todo: allow disabling the plugin

       return $;
    );
