FROM jetbrains/teamcity-minimal-agent:2018.2.2-linux

ENV DEBIAN_FRONTEND noninteractive
ENV GOVERSION 1.12.5

RUN apt-get update && apt-get install -qqy gcc build-essential vim git wget tar \
&& wget -q https://dl.google.com/go/go${GOVERSION}.linux-amd64.tar.gz \
&& tar -xvf go${GOVERSION}.linux-amd64.tar.gz \
&& mv go /usr/local \
&& mkdir -p /opt/gopath

ENV GOROOT="/usr/local/go"
ENV GOPATH="/opt/gopath"
ENV PATH="${GOPATH}/bin:${GOROOT}/bin:${PATH}"
