# Nginx
Nginx server for serving django backend.

The main purpose of nginx is to server media & static files[1] and act as proxy for django running on Gunicorn. 

### Container content
Base Image : nginx:1.15.5-alpine

### How it works.
Django deals with 2 types of files Static and Media files ( refer [1] for information), 
Gunicorn cannot serve files so we have to use a file server to deal with that.

The directory where django is gonna store these files will be shared between Nginx and Django container, so Django can 
keep and take care of files on its side and the Ngixn can serve it to user when needed.

These directories will be shared by mounting them to a same directory on the host machine when using docker-compose. When using
a static file storage like AWS S3 or GCP cloud storage it will be served directly from the storage location via the url
provided by the service 


### File structure
```
.
+-- default.conf # Config file for Nginx
+-- Dockerfile 	 # Docker config
```

### Note
The config file `default.conf` assumes the name of container running Gunicorn or Django uses the name 'application', 
if you are to change the name of django container make sure to make change to default.conf.


[1] Django files nomenclature https://techstream.org/Web-Development/Serving-Files-in-Django
