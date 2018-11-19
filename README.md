# DJ Docker
DJ Docker is a django boilerplate, made with  production in mind. If you are looking to 
start a Django project and plan to get it to production in moments time, DJ Docker is what you need.

DJ Docker can be deployed out of the box in the following environments :
1. Virtual Environment or VPS
2. Docker Compose
3. Kubernetes

### What's Inside
DJ Docker is made for production so it does packs a lot of tech inside.

1. Django 			: Main application backend 
2. Nginx 			: For serving files and proy gunicorn
3. RabbitMQ 		: For managing queues
4. Celery 			: For Periodic tasks and async operations
5. Postgres 		: For database.
6. Elasticsearch	: For search operations

### File structure
```
.
+-- application
+-- nginx
```
