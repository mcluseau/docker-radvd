from alpine:3.10.3
volume /config
run apk add --update iproute2 radvd
entrypoint ["/usr/sbin/radvd", "--nodaemon", "--logmethod", "stderr_clean", "--pidfile=/run/radvd.pid"]
cmd ["--config", "/config/radvd.conf"]
