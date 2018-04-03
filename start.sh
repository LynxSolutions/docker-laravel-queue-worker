#!/bin/sh

sed -i -e "s~%%QUEUE_CONNECTION%%~$QUEUE_CONNECTION~" \
		-e "s~%%QUEUE_NAME%%~$QUEUE_NAME~" \
        /etc/supervisord.conf

exec /usr/bin/supervisord -n -c /etc/supervisord.conf