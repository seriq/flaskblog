FROM debian:latest

LABEL maintainer=seriq

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -yq \
        python3 \
        python3-virtualenv \
        python3-pip

RUN useradd -r -m -d /srv/blog runner
COPY . /srv/blog
RUN chown -R runner:runner /srv/blog

WORKDIR /srv/blog
RUN python3 -m pip install -r requirements.txt

USER runner

ENTRYPOINT /srv/blog/docker-entrypoint.sh
