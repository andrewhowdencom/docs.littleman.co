# Logstash Forwarder

## Nginx
See the [events](/Events) page for a description of these types.

```
{
  "network": {
    "servers": [ "{server}:{port}" ],
    "ssl ca": "/etc/logstash/logstash.crt",
    "timeout": 15
  },
  "files": [
    {
      "paths": ["/var/log/nginx/access.log"],
      "fields": {
         "environment": "production",
         "format": "json",
         "package": "nginx",
         "service": "andrewhowden.com",
         "type": "event"
       }
    },
    {
      "paths": ["/var/log/nginx/error.log"],
      "fields": {
        "environment": "production",
        "format": "string",
        "package": "nginx",
        "service": "andrewhowden.com",
        "type": "error"
      }
    }
  ]
}

```
