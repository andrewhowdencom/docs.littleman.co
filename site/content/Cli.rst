===
CLI
===

Some handy CLI tools
--------------------

=============================== ==========================================
URL                             Description
------------------------------- ------------------------------------------
https://github.com/tmrts/boilr/ Generates boilerplate files from templates
=============================== ==========================================

Requirements for CLI application development
--------------------------------------------

- Should be able to accept std in 
- Should be able to specify an output format
- Should be able to specify an input format (or, ideally, recognize it by file type)
- Should use reasonable exit codes
- Should output most everything to std out (including expected "errors" -- Things like lint failures, or the like)
- Should *absolutely* show you decent help for all your stuff.
