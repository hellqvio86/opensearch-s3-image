FROM opensearchproject/opensearch:3.9.0@sha256:3b55f6b6249cfdb92b52ee59adc8a266203ba9ef9f5d82544fad6f1af2f3609e

RUN /usr/share/opensearch/bin/opensearch-plugin install --batch repository-s3
#RUN /usr/share/opensearch/bin/opensearch-plugin install --batch repository-s3 telemetry-otel
#RUN curl -L -o /tmp/prometheus.zip \
#  https://github.com/opensearch-project/opensearch-prometheus-exporter/releases/download/3.7.0.0/prometheus-exporter-3.7.0.0.zip \
#  && /usr/share/opensearch/bin/opensearch-plugin install --batch file:///tmp/prometheus.zip \
#  && rm /tmp/prometheus.zip
