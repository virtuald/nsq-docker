FROM radial/busyboxplus

RUN mkdir /download && cd /download && (curl -L https://github.com/nsqio/nsq/releases/download/v0.3.6/nsq-0.3.6.linux-amd64.go1.5.1.tar.gz | gunzip | tar -xf -) && ln -s /download/*/bin/* /usr/bin
