FROM directus/directus:10.9

COPY ./extensions /directus/extensions
COPY ./snapshots /snapshots

USER root
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
USER node

ENTRYPOINT ["/entrypoint.sh"]
CMD []
