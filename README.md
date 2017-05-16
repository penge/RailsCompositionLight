# RailsCompositionLight


### Generate the Rails skeleton app
```
$ docker-compose run web rails new . --force --skip-bundle
```

First, Compose will build the image for the web service using the Dockerfile.
Then it'll run rails new inside a new container, using that image.
Once it's done, you should have generated a fresh app.


### If you edit Gemfile at this point or later, you will need to build the image again
```
$ docker-compose build
```


### Boot the app with
```
$ docker-compose up
```


### To run Rails Console
```
$ docker-compose run web rails c
```
