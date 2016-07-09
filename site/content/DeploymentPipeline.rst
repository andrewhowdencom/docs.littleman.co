===================
Deployment Pipeline
===================

There is only one supported deployment pipeline. All projects must use it! Deployments are to be fully automated.

Build
-----
- Build an immutable, disposable docker container.

Terminology
```````````

========================== ========================================================= ===================================
Word                       Definition                                                Example
-------------------------- --------------------------------------------------------- -----------------------------------
Container Namespace        The vendor name all containers are part of                littleman-co
Project Namespace          A unique name for the application. Usually the FQDN.      docs-littleman-co
Container Name             The name unique to this container in the project          nginx
Git Hash                   The (short) git SHA-1 hash of the commit                  a4945f8
========================== ========================================================= ===================================

Naming
``````

The containers should be tagged in the following format:

  {container-namespace}/{project-namespace}-{container-name}:{git-hash}

for example,

  littleman-co/git-littleman-co-nginx:a4945f8

Environment
```````````

- Any variable informations should be specified in environment variables in a single file, sourced at the start of the build

Software
````````

- Software versions should be specified in the environment variables file

Steps
`````

- Compile static resources into a cache busted static asset
- Mark cache busted state in config

Analysis
--------

Security
````````

Analyse the container with: https://github.com/coreos/clair

Performance
```````````

- sitespeedio/coach
- GoogleChrome/lighthouse

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

..Tip:: 
 
    Things are created before they are deleted as Kubernetes can "adopt" pods that were previously matched under one deployment, but that also match under the new deployment.
    Deleting things first might mean we delete good services, only to recreate them shortly after.

- Create new resources
- Delete old resources - This might stay in the process for a while.
- Tag each deployed commit with a deployment number (deployment-0001)
- Annotate each deployment with "Successfully Deployed" or "Failed Deployment"



