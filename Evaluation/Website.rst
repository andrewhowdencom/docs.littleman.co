This page should be in alphabetical order. It's not, but I'm slowly tidying that. That's why it's such a mess!

Reading the Article
-------------------

Expected Audience
`````````````````
- [H] Denotes task that must be checked by human
- [M] Denotes task that is better outsourced to a machine

Requirements
````````````
# Get the scores from each given analysis tool


Accessibility
-------------
- Can your users accomplish the main goal of your site by using a screen reader?
- Are your users able to print a given page and see a reasonable representation of the content?

Connection
----------
- Does your website allow requests via SPDY (+1) or HTTP/2 (+2)?
- Does your website redirect from www or to www?

Communication
-------------

Domain
------
- Is your domain registered for the next 10 years?

Forms / Data Entry
------------------
- Does your website require users to enter the same information multiple times anywhere?
- Does your website offer JavaScript validation to mirror any server side validation?

Social
``````
- Are users able to share any given page to their preferred content-stream?

**Content after this is unordered**

Content
-------
- How many spelling mistakes are there across the site?

Membership
----------
Are the benefits of membership clearly stated?
Do you offer SSO with multiple services (Facebook, Google, Twitter)?

Usability
`````````
- It it immediately clear what your website's primary purpose is?
- Do any navigational diversions (for example, viewing the cart in an e-commerce site) return the user to their previous position or explicitly state otherwise?
- Is the site still usable without JavaScript / does the site display a notice indicating it requires javascript?
- Is the site usable in 95% of users browsers?
- Does it display a notice for any browsers it is not usable in?

Monitoring
----------
What checks do you have in place to ensure your website is always up?

- None (-1)
- Pingdom / Google / Whatever (+1)
- Sensu (+2)

Interface
---------
- Does your website have a favicon? (+1 for yes, -1 for a default)
- Do your website URLs accurately reflect the content of the page?

Legal
-----
Does your website display a cookie notice to users from the EU?
Does your website have a canonical protocol / subdomain? (www => {none})

SEO
---

Is your website encrypted over TLS everywhere?
Does Google spell the name of the site correctly?

Reliability
-----------
- What is your sites uptime over the last (x) period?
- Is your site speed consistent during its busiest periods?

Search
------
- Does your search check spelling and suggest corrections?
- Does your search update itself without a page reload?
- Does your search autocomplete?

Security
--------
Does your website require HTTP/S?
Does your website expose any of the following files?

General
"""""""
- .env
- .htaccess

Exposed Configuration Files
"""""""""""""""""""""""""""
- info.php
- phpinfo.php 
- app/etc/local.xml
- app/etc/config.xml

Version Control
"""""""""""""""
- .git/config
- .gitignore
. .gitkeep

Build Files
"""""""""""
- composer.json
- composer.lock


Metadata
`````````

// Todo: Find out whether Google queries metadata with varying user agents

- [M] Does your website contain appropriate schema data? (JSON-LD = + points)
- [M] Is the schema data appropriately formatted?
- [H] Does the schema data contain correct content?
- [M] Does your website have a /robots.txt file
- [M] Does your website have a /humans.txt file
- [H] Does your website have a malicious crawler honeypot?


Appropriate Data
""""""""""""""""

========== ===============
           Store Locations
========== ===============
Retailers        ✓
========== ===============

Data Completeness
"""""""""""""""""
Ranking on importance, from 100 (extremely important) to 10 (not very important at all).

Product
- Name (100)
- Price (90)

Help
----
How much time does it take for a client to get in touch with you?
- Livechat = Awesome
- Email = Good, providing it's answered
- Screenshots = Bonus Points

Consider how difficult it is to find a method to contact, also. One click away? Two? Buried in the footer or on a nested page?

Graceful Failure
----------------
A graceful failure is a friendly screen presented to customers with 
- Why the failure occured
- Steps to resolve the failure
- If that's impossible, expected time to service resolution
- Some way to find more information about the service resolution (including be notified of its restoration)

Does your website gracefully fail under the following conditions: 
- An in-page asset (JS, Image, Media, etc) is not found
- A web page is not found
- A FastCGI Client (ruby / php / whatever) goes down
- An application error (http status code > 209) occurs
- A server dies (nginx goes down)

Analysis tools
--------------

Ongoing
```````
- Google Webmaster Tools

One Time
````````
- `DNS - intoDNS <http://www.intodns.com/>`
- `SSL - Qualsys SSL Labs <https://www.ssllabs.com/ssltest/>`
- `SSL - Diffie Helman <https://weakdh.org/sysadmin.html>`
- `HTML - <https://validator.w3.org/nu/>`
- Google Audits (inspector, including accessibiliy)

Appendix
--------
