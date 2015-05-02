# Logging

## Event Logging
### Style
| Structure | Guideline      | 
|:---------:|:--------------:|
| Case      | Lower case     |

### General Logging Information
  - Code (either numeric error code or exception type)
  - Environment (development, staging, production)<sup>[2]</sup>
  - File
  - Level
  - Payload
  - URL
  - UserID
  - Tags

### Canonical Tags
| Tag        | Alternatives   |
|:----------:|:--------------:|
| ECMAScript | Javascript, JS |

## Performance Logging

### Service Usage Information <sup>[1]</sup>
 - Saturation (or queue)
 - Utilisation (or % usage)
 - Error Count

## References
- [1] - IEEE, (2015). SE-Radio Episode 225 Brendan Gregg on Systems Performance. Software Engineering Radio.
- [2] - Michael Bouvy, (2013). Ship logs to Logstash with Lumberjack / Logstash Forwarder. [online] Available at: http://michael.bouvy.net/blog/en/2013/12/06/use-lumberjack-logstash-forwarder-to-forward-logs-logstash/ [Accessed 2 May 2015].
