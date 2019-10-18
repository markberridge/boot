FROM openjdk:11-slim
LABEL maintainer="Mark Berridge"

ENV TZ=Europe/London
RUN ln -snf "/usr/share/zoneinfo/$TZ" /etc/localtime && echo "$TZ" > /etc/timezone

RUN addgroup --gid 2000 --system appgroup && \
    adduser --uid 2000 --system appuser --gid 2000

RUN mkdir -p /app
WORKDIR /app

COPY build/libs/boot*.jar /app/boot.jar
COPY run.sh /app

RUN chown -R appuser:appgroup /app

USER 2000

ENTRYPOINT ["/bin/sh", "/app/run.sh"]