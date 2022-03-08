ARG INVOICENINJA_DOCKER_TAG
FROM invoiceninja/invoiceninja:${INVOICENINJA_DOCKER_TAG}

RUN mdkir -p /run/secrets/
COPY load.secrets.from.file.sh /run/secrets/
RUN chmod +x /run/secrets/load.secrets.from.file.sh
ENTRYPOINT [ "/run/secrets/load.secrets.from.file.sh" ]
