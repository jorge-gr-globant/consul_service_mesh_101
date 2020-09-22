FROM envoyproxy/envoy-alpine:v1.14-latest
RUN apk add unzip bind-tools
RUN wget https://github.com/hashicorp/demo-consul-101/releases/download/0.0.3/counting-service_linux_amd64.zip; \
unzip counting-service_linux_amd64.zip || mv counting-service_linux_amd64 /usr/bin/counting-service
RUN wget https://releases.hashicorp.com/consul/1.8.4/consul_1.8.4_linux_amd64.zip; \
unzip consul_1.8.4_linux_amd64.zip && mv consul /usr/bin/consul

COPY ./entrypoint.sh /usr/bin/counting_entrypoint
ENTRYPOINT /usr/bin/counting_entrypoint
