# Logging

## Event Logging
### Style
| Structure | Guideline      | 
|:---------:|:--------------:|
| Case      | Lower case     |

### General Logging Information
| Field       | Description                                                              | 
|:-----------:|:------------------------------------------------------------------------:|
| Code        | 200, 300, 500, JavaException, BaseException                              |
| Environment | developent, staging or production                                        | 
| File        | index.php                                                                | 
| Level       | Emergency, Alert, Critical, Error, Warning, Notice, Informational, Debug |
| Payload     | This is an error message                                                 | 
| URL         | http://dev.howden.io                                                     | 
| UserID      | 58                                                                       |
| Tags        | PHP                                                                      |

### Canonical Tags
| Tag        | Alternatives   |
|:----------:|:--------------:|
| ECMAScript | Javascript, JS |
| PHP        |                |

## Performance Logging

### Service Usage Information <sup>[1]</sup>
 - Saturation (or queue)
 - Utilisation (or % usage)
 - Error Count

## References
- [1] - IEEE, (2015). SE-Radio Episode 225 Brendan Gregg on Systems Performance. Software Engineering Radio.
- [2] - Michael Bouvy, (2013). Ship logs to Logstash with Lumberjack / Logstash Forwarder. [online] Available at: http://michael.bouvy.net/blog/en/2013/12/06/use-lumberjack-logstash-forwarder-to-forward-logs-logstash/ [Accessed 2 May 2015].
