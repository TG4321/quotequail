FROM ubuntu

RUN mkdir /app

RUN apt-get update && apt-get full-upgrade -y && \
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN apt-get update && apt-get full-upgrade -y && apt-get install -y curl \
    python3 \
    python-is-python3 \
    ipython3

WORKDIR /app

VOLUME ["/app"]

CMD ["bash"]
