# Website Health

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

