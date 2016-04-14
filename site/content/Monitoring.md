# Monitoring

## Performance Monitoring
- Check for metric absense as well as metric thresholds. Communication errors is not a good excuse for no alerts!

## Event Logging
Always include all fields with the appropriate logs. Even if the information isn't there, it's helpful to know that it's not there so we might fill it in future.

### Style
| Structure | Guideline        |
|:---------:|:----------------:|
| Case      | ```snake_case``` |

### Base Log Information
CURRENT VERSION: 1.1.0

| Field       | Description                                                                  |
|:-----------:|:----------------------------------------------------------------------------:|
| ```environment``` | "development", "staging" or "production"                               |
| ```type```        | event, error, performance, user                                        |
| ```format```      | json, string, xml                                                      |
| ```domain```      | howden.io, andrewhowden.com                                            |
| ```code```        | 200                                                                    |
| ```severity```    | EMERG, ALERT, CRIT, WARNING, NOTICE, INFO, DEBUG                       |
| ```payload```     | "This is an event"                                                     |
| ```service```     | "Nginx", "Magento"                                                     | 
| ```user_id```     | 58                                                                     |
| ```time```        | 2015-05-01 15:00:00 (common log format)                                |
| ```version```     | 1.0.8 -- The current version of log info.                              | 

### Web Event
| Field            | Description                                                            |
|:----------------:|:----------------------------------------------------------------------:|
| ```url```        | http://howden.io/en/derp                                               | 
| ```request_id``` | ```16fd2706-8baf-433b-82eb-8c7fada847da```                             |
| ```remote_addr```| 127.0.0.1                                                              |

### Error Event
| Field       | Description                                                            |
|:-----------:|:----------------------------------------------------------------------:|
| ```file```  | The path to the file in which the error occured                        |
| ```line```  | Line number

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

## Website Monitoring


### Sensu Scripts

#### 5 Minutes
- 200 on / via HTTPS

#### Hourly
- 301 on / via HTTP
- APIs the site might use such as 
  - Mailchimp
  - Google Address Autocomplete
  - Payment Gateways

#### Daily
- TLS certificate expiry in 14 days
- Files Exist
  - robots.txt
  - humans.txt
  - sitemap.xml
- Wikipedia, (2016). Syslog. [online] Available at: https://en.wikipedia.org/wiki/Syslog#Severity_level [Accessed 18 Jan. 2016].
- [2] - Michael Bouvy, (2013). Ship logs to Logstash with Lumberjack / Logstash Forwarder. [online] Available at: http://michael.bouvy.net/blog/en/2013/12/06/use-lumberjack-logstash-forwarder-to-forward-logs-logstash/ [Accessed 2 May 2015].
