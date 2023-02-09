FROM quay.io/toolbx-images/ubuntu-toolbox:22.04

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience" \
      maintainer="adam.ryan.grubbs@gmail.com>"

COPY extra-packages /
RUN apt update && \
    apt upgrade -y && \
    cat /extra-packages | xargs apt install -y
RUN rm /extra-packages

