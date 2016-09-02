A proposal is a story intended to persuade the reader that a new course of action will be better than the current one in some way. It is a structured document that should be referenced, proofed and list its authors.

General Advice
--------------

- Do not voice opinion or conjecture, unless it is explicitly stated as such and justified as there is no evidence available.
- Support all points with references. If a point doesn't have a reference is isn't clearly stated conjecture, don't include it.

Title
-----

- Clearly define the advised behaviour. The idea is to leave the reader in no doubt as to what course of action the writer advises. In many cases, the reader may not care about supporting evidence, and simply trust the writer has been compitent in their analysis.
- Start with "Proposal To"

Example
'''''''

- "Proposal to adopt Containers as the primary deployable artifact and Kubernetes as the cluster container management tool."
- "Proposal to adopt BEM as the primary naming standard for all CSS selectors going forward."

Abstract
--------

A summary of the proposal, including description, benefits, risks and estimated costs. Some general guidelines include:

- Keep this short
- Pique interest

Quite often, it is better to write the abstract last after the proposal has been written.

Definitions
-----------

================ ======================================================================================
Word             Description
---------------- --------------------------------------------------------------------------------------
Software         Something that runs on a computer, that accomplishes some task in a deterministic way.
================ ======================================================================================

Problem
-------

An outline of the problem that the proposed solution will solve. If a proposal does not solve a problem it is worthless. Outline any efficiency improvements as problems. For Example

  "On mobile, connections are slow" rather than "with HTTP/2 mobile load times will decrease".

Hook into a metric that the reader cares about.

  "lower page load times are correlated with decreased user engagement and, by association, cart abandonment"

Solution
--------

How your proposed solution will resolve or lessen the described problem.

- "Side" benefits (or "opportunities") are fine, but much less important than the solution to the problem. 
- Rate each side benefit on a colour coded likert scale (very useful -> detrimental)
- Address each concern in description.
- Outline any other things that have undertaken this proposal and their results.

Measurement
-----------

- How do we know it works?

Anticipated Difficulties
------------------------

Any new problems that may arise as a result of the proposal, as well as how they can be solved or why it is acceptable to introduce a new problem.

  - List problems that don't yet have a solution. It should be avoided if possible, however sometimes its good to open it for discussion.
  - Rate each problem on a likert scale (noted earlier)

Previous Examples
-----------------

A section that details where other people have implemented this proposal, as well as their success.

Things like SIG => Kubernetes, Hugo => ... shitloads of stuff.

Risks
-----

Any new risks that may be introduced as a result of the proposal.

  - Rate each of these risks on a likert scale (dangerous - safe).

Estimated costs
---------------

- Development Time
- Equipment Purchase
- Reskilling Workers

Alternatives
------------

- Any alternative solutions, as well as why they weren't chosen.

Implementation
--------------

- Steps the organisation will go though to implement the process.

Deployment
''''''''''

Uptake
''''''

- How / Why will people buy into this?

Enforcement
'''''''''''

- Once people start doing it, what's to stop them going back? Things like lints, or CI might be useful here.

Completion
''''''''''

- Date at which it will be judged either a success or failure

Rollback plan
-------------

- Steps the organisation will go through to revert the change should that become necessary.

References
----------

- Use APA style
