Notes
-----
[H] Denotes task that must be checked by human
[M] Denotes task that is better outsourced to a machine

Requirements
------------
# Get the scores from each given analysis tool

Content
-------
How many spelling mistakes are there across the site?

Usability
`````````
- It it immediately clear what your website's primary purpose is?
- Do any navigational diversions (for example, viewing the cart in an e-commerce site) return the user to their previous position or explicitly state otherwise?
- Is the site still usable without JavaScript / does the site display a notice indicating it requires javascript?
- Is the site usable in 95% of users browsers?
- Does it display a notice for any browsers it is not usable in?

Interface
---------
- Does your website have a favicon? (+1 for yes, -1 for a default)

Legal
-----
Does your website display a cookie notice to users from the EU?

SEO
---

Does Google spell the name of the site correctly?

Metadata
`````````

// Todo: Find out whether Google queries metadata with varying user agents

[M] Does your website contain appropriate schema data? (JSON-LD = + points)
[M] Is the schema data appropriately formatted?
[H] Does the schema data contain correct content?

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

- 

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

Appendix
--------
