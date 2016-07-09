================================================================
Adopt special interest groups to manage various pipeline changes
================================================================

Definitions
-----------

===================== ===============================================================
Word                  Definition
--------------------- ---------------------------------------------------------------
Pipeline              A set of processes designed to accomplish some goal
===================== ===============================================================

Problem Description
-------------------

The development of both development and deployment processes, hosting and infrastructure and business process is so
complicated it is impossible for a single person to maintain a reasonable understanding of all aspects of these
processes at all times, such they can make effective decisions. Further, even once a decision has been made, it is
often given to a single person with little knowledge of a that domain to implement, that person being left to make
decisions without enough information.

Some concrete examples of this are:

  - The implementation of an easy to implement monitoring framework
  - The adoption of Docker as a deployment tool
  - The adoption of Continuous integration
  - The planning of social activities in a business environment
  - The undertaking of changes to business process

Proposal
--------

Design
------

- Proposals
- Decisions stored in GIT

Problems
--------

Managers cannot influence decisions
```````````````````````````````````

Sometimes managers need to, for entirely reasonable reason that are out of scope for the SIG (perhaps monetary or
contractual). However, the nature of the SIG means that no single person, including a manager can have any more 
than a single vote to deside the outcomes.

Resolution
``````````

The SIG is designed to provide the framework and tools required to make the SIG specified policy trivial to implement. 
The manager can halt this implementation, at which time the SIG will be required to revisit it's policy and decide
whether to continue with this line of inquiry

Example SIGs
- Social Events
- Monitoring and Logging
- Infrastructure
- Deployment
- Frontend
- Backend
- Code Quality

TODO:
- Need to manage overlapping responsibilities
