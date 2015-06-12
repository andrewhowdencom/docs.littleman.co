# Website Health

## General Guidelines
### Snapshot
A service has three health statuses:

| Indicator | Status   | Description                                     |
|:---------:|:--------:|:-----------------------------------------------:|
| ● [red]   | error    | Service is broken. Like, fix it now.            |
| ● [yellow]| warning  | Service is a bit iffy. Check it out shortly     |
| ● [green] | ok       | Everythings OK!                                 |

## Sensu Configuration
### Naming Standards
| Name          | Example                    | Guideline                                           |
|:-------------:|:--------------------------:|:---------------------------------------------------:|
| Client Name   |  ```sub.howden.io```       | The canonical URL of the server                     |
| Subscriptions | ```magento```              | The names of the services on the host being checked |
| Check         | ```http-status-check```    | The name of the repo the check's in                 |

## Checks
| Check         | Description                                                              |
|:-------------:|:------------------------------------------------------------------------:|
| Site Up       | Check if string 'data-service-id="abc123"' exists and is what's expected |
| Build Current | Check if string 'data-build-id="githash"' exists and is what's expected  |

## Dashboard
| Chart                | Metric                                | Notes                      |
|:--------------------:|:-------------------------------------:|:--------------------------:|
| Error Rate           | % events > warn                       |                            |
| Time till engageable | seconds till user is able to interact | Based on event fired in JS |
| Time till ready      | seconds till "document.ready()"       |                            |
