Canonical JavaScript Stacks
---------------------------

- Dependency Management
  - [Core] http://requirejs.org/
- Form Validation
  - None. Use HTML5 form validation
  - https://github.com/mailcheck/mailcheck
- [if] jQuery
  - https://github.com/wilsonpage/jquery-fastdom

Todo: Convert the below to be alphabetical
- Logging
  - [Core] https://github.com/pimterry/loglevel
  - [Core] https://github.com/miguelmota/Navigator.sendBeacon
- Dom Manipulation
  - [Core] https://github.com/wilsonpage/fastdom
- Carousel
  - Don't use a carousel
  - http://kenwheeler.github.io/slick/

Developing a plugin
-------------------
- Use events rather than method handles to provide methods to "hook into" the plugin
- Allow default configurations to be overwritten with the data-{whatever} flags
- Make compatible as AMD or Browserify module (the jQuery mousewheel has a good example for this)
- Ensure there are no magic classes (the plugin doesn't presume state of the DOM)


DOM Selectors
-------------
- A DOM selector should have only one responsibility. Usually, this means that you'll have separate JS and CSS selectors. The exception to this rule is if you have DOM selectors that must be structured in a given fashion to invoke a JS DOM api, it's probably OK to use in CSS (presuming that API is stable).
- Ideally, DOM selectors used expressly in JS should have the prefix "js"
- Below is a table of the responsibilities of different selectors

========================= ===============================================================
Selector                  Responsibility
------------------------- ---------------------------------------------------------------
.selector, .js-selector   A group of elements that have the same responsibility
#js-selector              A single element that has a singular responsibility
[data-selector]           Invoking an API
[data-foo="bar"]          Nothing. This is for passing data, don't used it a a selector
========================= ===============================================================

Event Listeners
---------------
- Events listeners should be bound as tightly as possible to the event dispatcher
- Events dispatched by ajax content should be caught at the parent container

Terminology
-----------

========================== ==========================================================
Definition
-------------------------- ----------------------------------------------------------
Delegate                   A DOM element that catches an event that bubbles up
========================== ==========================================================
