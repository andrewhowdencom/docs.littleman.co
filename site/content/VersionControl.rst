===============
Version Control
===============

Stick it in all Git. Git is amazing!

Git Hooks
---------
All repositories should have a series of git hooks in them, including:

  - post-commit - Notify about unsigned commits
  - pre-commit - Run the appropriate lints

These should be at the path ``/development/hooks/``

Standard Layout
---------------

.. Code:: 
  .arclint                                               # [ALWAYS] Lint runner. Always in the repo
  _output/                                               # [BINARY] Output for binary files
  .scss-lint                                             # [SCSS] scss-linter.
  ./build/                                               # [ALWAYS] Used to hold build requirements
  ./CHANGELOG.rst                                        # [ALWAYS]
  ./composer.json                                        # [PHP]
  ./deploy/                                              # [DEPLOYABLE] Used to hold deployment configuration
    ./(all|prd|stg|lcl)/                                 #
      ./kubernetes                                       #
  ./LICENSE.txt                                          # [ALWAYS]
  ./README.rst                                           # [ALWAYS]
  ./tests/                                               # [ALWAYS]

Links
-----
Readme - See Template/Readme
Changelog - See Template/Changelog

