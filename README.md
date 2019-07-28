# flaskblog

Following this [flask tutorial](https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world) by Miguel Grinberg

### Development setup:

docker build -t flaskblog:latest .
docker run -p 5000:5000 -v $(pwd):/srv/blog flaskblog:latest

### Production setup

docker build -t flaskblog:latest .
docker run -p 5000:5000 -v $/PATH/TO/DATABASE:/srv/blog flaskblog:latest production
