FROM crystallang/crystal:0.27.2

COPY shard* /usr/src/app/
WORKDIR /usr/src/app
RUN shards

COPY . /usr/src/app/

CMD ["crystal", "src/simple_kemal_app.cr"]
