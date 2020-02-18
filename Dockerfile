ARG DOCKER_VERSION=19.03.6-dind
FROM docker:${DOCKER_VERSION}

ARG COMPOSE_VERSION=
ARG DOCKER_VERSION

RUN apk add --no-cache py-pip python-dev libffi-dev openssl-dev gcc libc-dev make && \
    pip install --no-cache-dir "docker-compose${COMPOSE_VERSION:+==}${COMPOSE_VERSION}"

COPY entrypoint.sh /usr/bin/entrypoint.sh

COPY action.md .

ENTRYPOINT [ "/usr/bin/entrypoint.sh" ]

CMD [""]
