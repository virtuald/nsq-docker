FROM radial/busyboxplus

RUN mkdir /download && cd /download && (curl -L https://github.com/nsqio/nsq/releases/download/v0.3.8/nsq-0.3.8.linux-amd64.go1.6.2.tar.gz | gunzip | tar -xf -) && ln -s /download/*/bin/* /usr/bin
