=====================
Continuous Deployment
=====================

Scripts
-------
- Each script should be set to fail on the first command fail. In bash, this is done with::

    #!/bin/bash

    set -e

Deployment Process
------------------
- Tag each deployed commit with a deployment number (deployment-0001)
- Annotate each deployment with "Successfully Deployed" or "Failed Deployment"
