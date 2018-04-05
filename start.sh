#!/bin/sh

if [ -z "$QUEUE_TRIES" ]; then
	QUEUE_TRIES="3"
fi

if [ -z "$QUEUE_TIMEOUT" ]; then
	QUEUE_TIMEOUT="60"
fi

sed -i -e "s~%%QUEUE_CONNECTION%%~$QUEUE_CONNECTION~" \
		-e "s~%%QUEUE_NAME%%~$QUEUE_NAME~" \
        -e "s~%%QUEUE_TRIES%%~$QUEUE_TRIES~" \
        -e "s~%%QUEUE_TIMEOUT%%~$QUEUE_TIMEOUT~" \
        /etc/supervisord.conf

exec /usr/bin/supervisord -n -c /etc/supervisord.conf