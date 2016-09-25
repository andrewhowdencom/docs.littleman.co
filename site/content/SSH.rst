===
SSH
===

Key Generation
--------------

Use Ed25519. Commands are as follows[g3rt]_

.. code:: bash

  $ ssh-keygen -o -a 100 -t ed25519
  Generating public/private ed25519 key pair.
  Enter passphrase (empty for no passphrase):
  Enter same passphrase again:
  Your identification has been saved in /home/gert/.ssh/id_ed25519.
  Your public key has been saved in /home/gert/.ssh/id_ed25519.pub.
  The key fingerprint is:
  SHA256: [...] gert@hostname
  The key's randomart image is: [...]

Links
-----

Todo: Read and formulate guidelines based on these. 

- https://stribika.github.io/2015/01/04/secure-secure-shell.html

References
----------

.. _g3rt: https://blog.g3rt.nl/upgrade-your-ssh-keys.html
