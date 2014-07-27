FROM radial/busyboxplus

RUN mkdir /download && cd /download && (curl -L https://github.com/bitly/nsq/releases/download/v0.2.29/nsq-0.2.29.linux-amd64.go1.3.tar.gz | gunzip | tar -xf -) && ln -s /download/*/bin/* /usr/bin
