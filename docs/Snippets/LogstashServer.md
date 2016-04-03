# Logstash Server

## Inputs

### Lumberjack
```
input {
  lumberjack {
    port => 5043
    ssl_certificate => "/etc/logstash/ssl/server.crt"
    ssl_key => "/etc/logstash/ssl/server.key"
  }
}
```

## Filters

### Json
```
filter {
  if [format] == "json" {
    json {
      source => "message"
    }
  }
}
```

### Nginx Error
```
filter {
  if [format] == "string" and [type] == "error" and [package] == "nginx" {
    grok {
      match => [ "message", "(?<timestamp>[0-9A-z\/:\ ]{0,19}) \[%{LOGLEVEL:level}\] %{GREEDYDATA:payload}" ]
    }
  }
}
```

## Outputs

### Elastic Search
```
output {
  elasticsearch {
    protocol => "http"
    cluster => "elasticsearch"
    host => "127.0.0.1"
    port => 9200
  }
}
```
