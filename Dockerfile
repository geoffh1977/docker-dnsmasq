# DNSMasq DNS Container
FROM geoffh1977/alpine:latest
LABEL maintainer="geoffh1977 <geoffh1977@gmail.com>"

# hadolint ignore=DL3002
USER root

# Install Software And Configure
# hadolint ignore=DL3018
RUN apk -U --no-cache add dnsmasq && \
  echo "conf-dir=/config,*.conf" > /etc/dnsmasq.conf && \
  mkdir /config && \
  chown dnsmasq:dnsmasq /config

# Set Container Options
EXPOSE 53/tcp 53/udp
WORKDIR /tmp
VOLUME ["/config"]
ENTRYPOINT ["dnsmasq"]
CMD ["--no-daemon"]
