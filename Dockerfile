FROM opensearchproject/opensearch:3.5.0

# Install the repository-s3 plugin
RUN /usr/share/opensearch/bin/opensearch-plugin install --batch repository-s3
