======
Design
======

Definitions
------------

================== ==================================================================
Word               Description
================== ==================================================================
descriptor         A qualifier for the psuedoelement structure (eg. title)
psuedoelement      The semantic name for the page structure (eg. navbar)
================== ==================================================================

Elements
--------

In the order they appear on the page (top - bottom, left to right)

================= ========================================================
Title             Description
----------------- --------------------------------------------------------
Controls          Some series of interactive elements that prompt action.
Masthead          Top, fixed bar with logo, quick-nav and so on.[1]
QuickNav          Single line to bar with links to My Account, etc.
================= ========================================================

Fonts
-----

Blacklist
"""""""""

- Futura Bold (shitty kerning)

Overview
---------

Responsive
""""""""""

-Any element that requires responsive aspect should be developed with the same approach the framework has taken. If in doubt, design an element for mobile, and scale it up to desktop.

Pertinent Data
""""""""""""""

- Brand Colors

Process
""""""""

1. Develop a kitchen sink of elements that will be used throughout the site. Some common ones are
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
Favourites           Heart
==================== ========================================

Common Libraries
----------------

==================== =================================================
Mega Menu            Yamm
Offcanvas            Jasny Offcanvas
==================== =================================================

Interactive Elements
--------------------

- Interactive elements that are not guaranteed to work should start disabled, and once a health check has taken place, be enabled.

Needs Analysis
--------------

#. What is the purpose of this design? What is it supposed to do.
#. What devices does this design need to work for?

SCSS
----

Headings
"""""""""

Heading styles should not be coupled with their tag counterparts. h1 - h5 are used for determining the importants of the content that follows, the class for describing further information about that section.

Naming
""""""

======================= ==============================================================
Type                    Standard
======================= ==============================================================
Color Variable          {psuedoelement}-color-{descriptor}
Height Variable         {psuedoelement}-height-{short(er|est)|base|tall(er|est)}
Thickness Variable      Use width
Width Variable          {psuedoelement}-width-{thin(er|est)|base|thick(er|est)}
======================= ==============================================================

Canonical name
"""""""""""""""

| Name                 | Alternatives                                                |
|:--------------------:|:-----------------------------------------------------------:|
| largest              | x-large, extra-large                                        |
| smallest             | x-small, tiny                                               |

Reserved Words


Whitespace
"""""""""""

- All elements are responsible for the vertical whitespace directly below them, with the exception
   of the first element on the page

Naming Standard
""""""""""""""""

Use BEM

Drop down menus
---------------

A nice library for aiming the mouse somewhere
http://bjk5.com/post/44698559168/breaking-down-amazons-mega-dropdown

Directory Structure
""""""""""""""""""""

This should be replaced by CSS, at some point.

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

Tables
------

- Ensure they are sortable
- https://techblog.livingsocial.com/blog/2015/04/06/responsive-tables-in-pure-css/

Typography
----------

========== ============== ==========================
Use        Inherits From  Additional Styles
---------- -------------- --------------------------
Main Text                 1em
Link       Main Text      Underline, Color: #0B0080
========== ============== ==========================

Useful Links
------------

- [Sassline - Print style typography on the web](https://github.com/designbyjake/sassline)
- [Bootstrap - Materials Design](http://fezvrasta.github.io/bootstrap-material-design/bootstrap-elements.html

References
----------

[1] - The bootstrap 4 cover template: http://v4-alpha.getbootstrap.com/examples/cover/
