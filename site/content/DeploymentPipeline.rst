===================
Deployment Pipeline
===================

There is only one supported deployment pipeline. All projects must use it! Deployments are to be fully automated. 

Build
-----
- Build an immutable, disposable docker container.

Analysis
--------

Security
````````
Analyse the container with: https://github.com/coreos/clair

Deployment
----------

States
``````
A refspec can be in (only) one of the following states:

====================== ==================================================================
State
---------------------- ------------------------------------------------------------------
deployable             Should be queued up for deployment. Continually rebased on master.
staged                 Not queued up for deployment. Continually rebased on master.
development (default)  Not queued up, and its the developers responsibility to rebase.
deployed               On master, never to be touched again.
broken                 Unable to be cleanly rebased on Master.
====================== ==================================================================

The state is indicated by a git note, of the format::

  state: deployable // or staged, development or deployed

Deployments go out into a Kubernetes stack, somewhere.

Scripts
```````
- Each script should be set to fail on the first command fail. In bash, this is done with::

    #!/bin/bash

    set -e

Deployment Process
```````````````````
- Tag each deployed commit with a deployment number (deployment-0001)
- Annotate each deployment with "Successfully Deployed" or "Failed Deployment"


