# confluence-docker-ssl

A production ready confluence docker image, external database and persistent data storage.

## Officially supported by Atlassian

> use our image that is based on AdoptOpenJDK 8, which is fully supported for Confluence 6.13 and later. These images are tagged with the suffix **ubuntu-18.04-adoptopenjdk8** together with the Confluence version.

[See information](https://confluence.atlassian.com/confkb/update-the-confluence-docker-image-to-use-oracle-jdk-829062521.html)

## Getting started

### Locally

```bash
docker build . -t confluence-docker-ssl
```

```bash
docker run \
  -it --rm \
  -v $(pwd)/home:/var/atlassian/application-data/confluence \
  -v $(pwd)/certs:/opt/atlassian/confluence/certs \
  -p 8080:8080 \
  -p 8443:8443 \
  --entrypoint /bin/sh \
  --name="confluence" \
  confluence-docker-ssl
```

#### Start

```
/entrypoint.sh -fg
```

#### Visit

`http://localhost:8080`

### GCP

Coming soon

## Upgrading confluence

Updating is easier because we are using the official Atlassian Confluence Docker image.

Follow the upgrade guidance for JIRA in docker [here](https://hub.docker.com/r/blacklabelops/jira) to ensure a smooth upgrade.
