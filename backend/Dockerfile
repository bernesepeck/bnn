FROM directus/directus:10.10

COPY ./extensions /directus/extensions

USER root
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
USER node

ENTRYPOINT ["/entrypoint.sh"]
CMD []