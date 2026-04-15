FROM opensearchproject/opensearch:3.6.0

RUN /usr/share/opensearch/bin/opensearch-plugin install --batch repository-s3
RUN curl -L -o /tmp/prometheus.zip \
  https://github.com/opensearch-project/opensearch-prometheus-exporter/releases/download/3.6.0.0/prometheus-exporter-3.6.0.0.zip \
  && /usr/share/opensearch/bin/opensearch-plugin install --batch file:///tmp/prometheus.zip \
  && rm /tmp/prometheus.zip
