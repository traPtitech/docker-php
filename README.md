# docker php runtime

https://hub.docker.com/r/trap/php/

## usage

```
docker run -dit \
	--network host \
	--name php-fpm \
	--restart always \
	-v /srv:/srv \
	-v /cloud:/cloud \
	-p 9000:9000 \
	trap/php
```
