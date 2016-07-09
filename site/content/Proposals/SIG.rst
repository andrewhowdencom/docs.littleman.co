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

Members of the business team form Special Interest Groups (SIGs) that are responsible for deciding the policy and 
building the tools to allow implementation of policy or technology that concerns the SIG. SIGs would be the primary
vehicle through which new policy was decided in an area that concerned the SIG, and members of the team would be
able to freely join any SIG they please.

Design
------

Charter
```````

A SIG will have a charter that outlines a limited set of things it's responsible for. Changes in responsiblity should be 
coordinated with other SIGs, management and other concerned parties.

Responsibilities
````````````````

The SIG would be responsible for the following:

- Investigating policy changes in it's concerned area
- Creating proposals that affect general business process
- Approving those processes 
- 

Decision Making Process
```````````````````````

- Mirror existing decision making process
- Proposals
- Decisions stored in GIT

Problems
--------

SIG members stalemate on a vote
```````````````````````````````

Given that all decisions are made by vote, it's possible that an even number of members (such as 2) will disagree with
each other, leading to blocked policy and rendering the SIG ineffective.

To resolve this issue, there must be an uneven number of voting members for all SIGs (1, 3). If a new member joins a SIG
and makes the number even, that member will not have voting power until an additional member joins.

Managers cannot influence decisions
```````````````````````````````````

Sometimes managers need to, for entirely reasonable reason that are out of scope for the SIG (perhaps monetary or
contractual) prevent certain actions. However, the nature of the SIG means that no single person, including a manager,
can have any more than a single vote to decide the outcomes.

To resolve this issue, we limit the SIG responsibility to build the framework and tools required to make the SIG 
specified policy trivial to implement. The manager can halt this implementation (but not the development of the tools 
or policy), at which time the SIG will be required to revisit it's policy and decide whether to continue with this line 
of inquiry

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
