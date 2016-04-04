# Website Package

This is information about the standard structure of a website package. It's not a hard and fast set, just a reasonable layout of the files I've found useful. 

## Folder Structure 
    /data/www/{application}
      → app/
      → build/ 
          robo.yml
      → etc/ 
        → nginx/ 

          # Ideally, there should be an includes that handles these. Yet to figure out a clean way to do that, though.
          Production.conf
          Staging.conf
          Development.conf
        → init.d/
 
          # Some (mainly go) application don't come with an init.d service script. 
          {application} 
      → public/
        index.{ext}
      → var/ 
        → log/ 
          application.log
      → vendor/
