FROM opensearchproject/opensearch:3.10.0@sha256:02d6d6e40c820ae08233b60540aa5d3d9364d64e2dc724e38d6c8c794879b2a0

RUN /usr/share/opensearch/bin/opensearch-plugin install --batch repository-s3
#RUN /usr/share/opensearch/bin/opensearch-plugin install --batch repository-s3 telemetry-otel
#RUN curl -L -o /tmp/prometheus.zip \
#  https://github.com/opensearch-project/opensearch-prometheus-exporter/releases/download/3.7.0.0/prometheus-exporter-3.7.0.0.zip \
#  && /usr/share/opensearch/bin/opensearch-plugin install --batch file:///tmp/prometheus.zip \
#  && rm /tmp/prometheus.zip
