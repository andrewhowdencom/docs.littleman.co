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


