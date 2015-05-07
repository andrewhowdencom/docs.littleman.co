# Logging

## Event Logging
### Style
| Structure | Guideline        |
|:---------:|:----------------:|
| Case      | ```snake_case``` |

### Base Log Information
| Field       | Description                                                                  |
|:-----------:|:----------------------------------------------------------------------------:|
| ```environment``` | "development", "staging" or "production"                               |
| ```type```        | event, error, performance, user                                        |
| ```format```      | json, string, xml                                                      |
| ```service```     | howden.io, andrewhowden.com                                            |
| ```code```        | 200                                                                    |
| ```level```       | emergency, alert, critical, error, warning, notice, information, debug |
| ```payload```     | "This is an event"                                                     |
| ```package```     | "Nginx", "Magento"                                                     | 
| ```user_id```     | 58                                                                     |
| ```timestamp```   | 2015-05-01 15:00:00                                                    |

### Web Event
| Field            | Description                                                            |
|:----------------:|:----------------------------------------------------------------------:|
| ```url```        | http://howden.io/en/derp                                               | 
| ```request_id``` | ```16fd2706-8baf-433b-82eb-8c7fada847da```                             |

### Error Event
| Field       | Description                                                            |
|:-----------:|:----------------------------------------------------------------------:|

### User Interaction Event
| Field       | Description                                                            |
|:-----------:|:----------------------------------------------------------------------:|
#### Standard Events
  #. Form Submission
  #. Form Validation Failure
  #. Button Click

#### Canonical Tags
| Tag        | Alternatives   |
|:----------:|:--------------:|
| ECMAScript | Javascript, JS |
| Magento    | Mage, Varien   |
| PHP        |                |

## Performance Logging Information

### Service Usage Information <sup>[1]</sup>
 - Saturation (or queue)
 - Utilisation (or % usage)
 - Error Count

## Code Samples

### Nginx
```
    log_format json '{ "time": "$time_local", '
        '"remote_addr": "$remote_addr", '
        '"request_time": "$request_time", '
        '"code": "$status", '
        '"file": "$request_uri", '
        '"level": "info", '
        '"payload": "$request", '
        '"request_method": "$request_method", '
        '"http_user_agent": "$http_user_agent" }';
```

- [2] - Michael Bouvy, (2013). Ship logs to Logstash with Lumberjack / Logstash Forwarder. [online] Available at: http://michael.bouvy.net/blog/en/2013/12/06/use-lumberjack-logstash-forwarder-to-forward-logs-logstash/ [Accessed 2 May 2015].
