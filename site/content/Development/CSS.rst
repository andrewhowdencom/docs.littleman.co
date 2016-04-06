===
CSS
===

Selectors
---------
- Should be named for a semantic purpose, rather than imply some visual property. 
  .. Code:: 
    // Good
    .btn-checkout

    // Bad
    .btn-orange
- Selectors should make minimal presumptions about the state of the DOM (usually this just means avoid nesting things, and don't use element tags)

Preprocessed
------------
- Avoid the use of magic numbers, even in derived class (think %col-xs-#{$grid-columns / 2} rather than %col-xs-6)

