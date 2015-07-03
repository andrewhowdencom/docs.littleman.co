
Requirements
------------

# Get the scores from each given analysis tool

Usability
`````````
- Is the site still usable without JavaScript / does the site display a notice indicating it requires javascript?
- Is the site usable in 95% of users browsers?
- Does it display a notice for any browsers it is not usable in?

Legal
-----
Does your website display a cookie notice to users from the EU?

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
