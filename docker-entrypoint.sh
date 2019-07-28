#!/bin/sh

ARGS=$@
BASEPATH=/srv/blog
export MAIL_SERVER=localhost
. $BASEPATH/.flaskenv

MODE=${ARGS:=default}

flask db upgrade

if [ $MODE = "production" ]; then
        export FLASK_DEBUG=0
	export FLASK_APP=microblog:wsgi
        gunicorn -b 0.0.0.0:5000 -w $(nproc) --access-logfile - \
                $FLASK_APP
else
        export FLASK_DEBUG=1
        export FLASK_APP=microblog.py
	flask run -h 0.0.0.0
fi
