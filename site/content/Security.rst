========
Security
========

- Read pentesting

Administrative Areas
--------------------
1. Whitelist IPs where possible.
2. Ensure the connection is over SSL (refuse if not)
3. Require two factor auth

Authentication
--------------
- Is auth privelege minimal and reviewed regularly?

Human
`````
- Is the auth provider centralized?
- Does the auth require two factor sign on?

Machine
```````
- Are there any "god mode" certificates? (remove them, now!)
- Are keys rolled periodically? (with deployment or artifact rebuilds?)

SSL 
---
Cheap SSL Certificates
```````````````````````
Let's Encrypt is now GA. Use that.

Insecure Protocols
``````````````````
// Todo: Replace with "Secure Protocols"
# RC4 [CryptographyEngineering2013]_

Handy Links
-----------
# `Qualys SSL Labs test`_

.. _Qualys SSL Labs test: https://www.ssllabs.com/ssltest/
.. _Alpha SSL: http://www.garrisonhost.com/ssl-certificates/alphassl.html
.. [CryptographyEngineering2013] http://blog.cryptographyengineering.com/2013/03/attack-of-week-rc4-is-kind-of-broken-in.html

Mainditory machine software
--------------------------

Authentication Failure
``````````````````````
- Fail2Ban (for SSH) http://www.fail2ban.org/wiki/index.php/Main_Page

Security Auditing / Forensics
`````````````````````````````
auditd
GRR (https://github.com/google/grr)

Monitoring 
----------

Server Access
`````````````
- Get a list of all services and whitelist those that should be visible externally. Poll all services (not whitelisted) to see if they're open. Services are:
  - Domains
  - IPs
    - Where an IP is supposed to be open on 443/80 (for example), scan to make sure it's not listening on anything else.

Intrusion Detection
-------------------
Canary Tokens (http://blog.thinkst.com/p/canarytokensorg-quick-free-detection.html) + Canaryfy | Watchmanb 

Secret Management
-----------------
- Hashicorp Vault (https://vaultproject.io/) - FS Backend. It's also possible to use a HW backed solution with Vault. 

Software Entrypoints
--------------------
- Reduce as much as possible (i.e. dont register a protocol handler because it's cool)
- Control and, if possible, auth.


