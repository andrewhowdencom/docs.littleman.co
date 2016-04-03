# Config

## Config File
Use the yaml file. You'll need the extension, check out http://git.howden.io/roboli/configuration (It's not particularly stable - I'll update this when I've been using the config ext for a while, and release a 1.0.0 version)

### Example 
Below is below is a sample yaml file for reference. Basically, you'll have to import this file and then the config is available in robo.  

    URL: subdomain.domain.com
      Environments:
        Development:
        Staging:
        Production:
          Path: /data/www/
          User: deployment-user
          Host: host-alias
          Nginx:
            Sites: /etc/nginx/sites-available
      Rsync:
        Excludes:
            - .idea
            - .git

            # Build Files
            - RoboFile.php
            - build

            # Generated Content
            - public/*



