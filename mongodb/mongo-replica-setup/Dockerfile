FROM mongo:8.0.3

COPY ./setup.sh /setup.sh

RUN chmod +x /setup.sh

ENTRYPOINT [ "/setup.sh" ]