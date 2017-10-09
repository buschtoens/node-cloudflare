FROM ruby:2.4
EXPOSE 4567
COPY builder.sh /
WORKDIR /opt/slate

RUN /builder.sh
VOLUME /opt/slate/source

CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]