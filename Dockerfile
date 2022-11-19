FROM ghcr.io/home-assistant/amd64-base-python:3.10-alpine3.15
RUN python -m venv venv && \
    source venv/bin/activate && \
    pip install linode-cli
COPY linode-dyndns /etc/services.d/
