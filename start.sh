#!/bin/sh

sed -e "s~%%QUEUE_CONNECTION%%~$QUEUE_CONNECTION~" \
		-e "s~%%QUEUE_NAME%%~$QUEUE_NAME~" \
        /etc/supervisor/supervisord.conf

exec /usr/bin/supervisord -n -c /etc/supervisord.conf