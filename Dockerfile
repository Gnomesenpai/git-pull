FROM debian:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir /git && \
    apt-get update && apt-get install --no-install-recommends gpg curl wget git -y
WORKDIR /git

CMD [ "/bin/bash","-c","cd /git && while true; do git pull; sleep 10; done" ]