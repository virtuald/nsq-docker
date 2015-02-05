FROM radial/busyboxplus

RUN mkdir /download && cd /download && (curl -L https://github.com/bitly/nsq/releases/download/v0.3.1/nsq-0.3.1.linux-amd64.go1.4.1.tar.gz | gunzip | tar -xf -) && ln -s /download/*/bin/* /usr/bin
