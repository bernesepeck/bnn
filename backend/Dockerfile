FROM directus/directus:11.8

COPY ./extensions /directus/extensions
COPY ./templates /directus/templates

USER root
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
USER node

ENTRYPOINT ["/entrypoint.sh"]
CMD []
