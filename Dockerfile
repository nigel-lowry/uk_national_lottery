FROM crystallang/crystal:0.27.2

COPY . /usr/src/app/

WORKDIR /usr/src/app
RUN shards

CMD ["crystal", "src/simple_kemal_app.cr"]
