#!/bin/bash
# Client Env Vars
set -e

if [ "$1" = 'common' ]; then

        echo "******* PROCESSING POST CONFIGURATION *********"
        echo "******* STARTING COMMON *********"
	## Do not forget if proces is launche via service start you have to tail logs to continue PID docker process
else
        exec "$@"
fi

