# Nginx

| Shorthand | Definition                           | 
|-----------|:------------------------------------:|
| →         | Folder                               |
| ~         | Simlink                              |
| owr       | The linux user who owns the folder   |
| depUser   | The user running the deployment user |

## Configuration structure
### Folders
    etc/nginx
      →  conf.d/
        ./
        ../
      nginx.conf
      →  [owr: depUser] sites-enabled/
        ~ Sites

