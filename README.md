# OpenSearch S3 Image

[![Docker CI](https://github.com/hellqvio86/opensearch-s3-image/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/hellqvio86/opensearch-s3-image/actions/workflows/docker-publish.yml)
[![Docker Pulls](https://img.shields.io/docker/pulls/hellqvio/opensearch-s3)](https://hub.docker.com/r/hellqvio/opensearch-s3/)
[![Docker Image Version](https://img.shields.io/docker/v/hellqvio/opensearch-s3?sort=semver)](https://hub.docker.com/r/hellqvio/opensearch-s3/tags)

Provides a Docker image for OpenSearch with the `repository-s3` plugin installed by default. This enables native backups and snapshots of OpenSearch clusters to Amazon S3 or S3-compatible endpoints without requiring custom startup scripts or init containers.

## Disclaimer

**IMPORTANT: This project is NOT affiliated with, endorsed by, or in any way associated with OpenSearch, the Linux Foundation, or Amazon.**

OpenSearch is a trademark of the Linux Foundation. Amazon Web Services (AWS) and S3 are trademarks of Amazon.com, Inc. or its affiliates.

## Usage

This image functions identically to the official OpenSearch image, but the S3 repository plugin is bundled inside.

```yaml
version: '3'
services:
  opensearch-node1:
    image: hellqvio/opensearch-s3:latest
    container_name: opensearch-node1
    environment:
      - cluster.name=opensearch-cluster
      - node.name=opensearch-node1
      - discovery.seed_hosts=opensearch-node1
      - cluster.initial_cluster_manager_nodes=opensearch-node1
      - bootstrap.memory_lock=true
      - "OPENSEARCH_JAVA_OPTS=-Xms512m -Xmx512m"
    ulimits:
      memlock:
        soft: -1
        hard: -1
      nofile:
        soft: 65536
        hard: 65536
    ports:
      - 9200:9200
      - 9600:9600
```
