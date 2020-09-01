FROM phusion/baseimage:0.11
# TEST Dockerfile
# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

ARG POWERSHELL_BUILD=18.04

# Create required directories
RUN mkdir -p /root/.ssh \
    && mkdir -p /root/.config/powershell \
    && mkdir -p /root/cache \
    && mkdir -p /root/log

# Expose ssh and log volume
VOLUME /root/.ssh /root/log

# Expose environment variables
ENV GIT_USERNAME= \
    GIT_EMAIL= \
    SNOWFLAKES= \
    BUCKET= \
    CRONTAB="0 * * * *" \
    METHOD=push \
    UPSTREAM=
