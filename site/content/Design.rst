Definitions
------------

================== ==================================================================
Word               Description
================== ==================================================================
descriptor         A qualifier for the psuedoelement structure (eg. title)
psuedoelement      The semantic name for the page structure (eg. navbar)
================== ==================================================================

Overview
---------

Pertinent Data
``````````````
- Brand Colors

Process
````````
#. Develop a kitchen sink of elements that will be used throughout the site. Some common ones are

  - Buttons
  - Loading Indicators
  - Headings
  - Paragraph Text
  - Lists

Canonical Symbology
-------------------

Where possible, use the materials design icon set.

==================== ========================================
Term
==================== ========================================
Search               Magnifying Glass
==================== ========================================

SCSS
----

Headings
`````````

Heading styles should not be coupled with their tag counterparts. h1 - h5 are used for determining the importants of the content that follows, the class for describing further information about that section. 

Naming
``````

======================= ==============================================================
Type                    Standard
======================= ==============================================================
Color Variable          {psuedoelement}-color-{descriptor}
Height Variable         {psuedoelement}-height-{short(er|est)|base|tall(er|est)}
Thickness Variable      Use width
Width Variable          {psuedoelement}-width-{thin(er|est)|base|thick(er|est)}
======================= ==============================================================

Canonical name
```````````````

====================== ===============================================================
Name                   Alternatives
---------------------- ---------------------------------------------------------------
largest                x-large, extra-large
====================== ===============================================================

Reserved Words
```````````````

Modifiers
"""""""""

Modifiers are selectors that only modify the look of the page when combined with another selector. They should not have any styles applied to them directly, and ideally should only be used as placeholders. 

=========== =========================================================
Word         Description
----------- ---------------------------------------------------------
left        Move the element to the left side of its parent         
right       Move the element to the right side of its parent
=========== ========================================================= 

Whitespace
```````````
 - All elements are responsible for the vertical whitespace directly below them, with the exception
   of the first element on the page

Naming Standard
````````````````
| Structure    | Standard                                                  | Example        |
|:------------:|:---------------------------------------------------------:|:--------------:|
| placeholders | Singular, describing it's semantic purpose. One word only | ```%heading``` | 

Drop down menus
---------------
A nice library for aiming the mouse somewhere
http://bjk5.com/post/44698559168/breaking-down-amazons-mega-dropdown

Directory Structure
````````````````````

| Sass |             |       |                 |
|------|:-----------:|:-----:|:----------------|
|      | styles      |                         |
|      | _mixins                               |
|      | _colors                               |
|      | _variables                            |
|      | _placeholders                         |
|                                              |
|      | styles/     |       |                 |
|      |             | core/ |                 |
|      |             |       | _buttons.scss   |
|      |             |       | _carousels.scss |
|      |             |       | _collapse.scss  | 
|      |             |       | _forms.scss     |
|      |             |       | _loading.scss   |
|      |             |       | _messages.scss  |
|      |             |       | _modals.scss    |
|      |             |       | _panels.scss    |
|      |             |       | _typography.scss|
|      |             |       | _utilities.scss |
|      |             |       | _wells.scss     |
|      |             |       |                 |

Typography
----------

========== ============== ==========================
Use        Inherits From  Additional Styles
========== ============== ==========================
Main Text                 1em
Link       Main Text      Underline, Color: #0B0080

Useful Links
-------------

- [Sassline - Print style typography on the web](https://github.com/designbyjake/sassline)
- [Bootstrap - Materials Design](http://fezvrasta.github.io/bootstrap-material-design/bootstrap-elements.html)