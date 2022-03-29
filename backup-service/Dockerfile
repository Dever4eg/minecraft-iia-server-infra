FROM alpine

RUN apk add aws-cli

ADD backup.sh /backup.sh
RUN chmod 777 /backup.sh

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod 777 /entrypoint.sh

# every day at 8 am
RUN echo '0 8 * * * /backup.sh' > /etc/crontabs/root

CMD ["/entrypoint.sh"]
