ARG SONARR_PATH=/var/lib/sonarr

FROM arm32v7/alpine:edge as tar

ARG SONARR_PATH
ARG VERSION

RUN apk add curl \
 && curl -L -O http://download.sonarr.tv/v3/phantom-develop/$VERSION/Sonarr.phantom-develop.$VERSION.linux.tar.gz \
 && tar -xvzf Sonarr.phantom-develop.*.linux.tar.gz \
 && mkdir $SONARR_PATH && mv Sonarr/* $SONARR_PATH \
 && rm Sonarr.phantom-develop.*.linux.tar.gz

FROM arm32v7/mono

ARG SONARR_PATH

COPY --from=tar $SONARR_PATH $SONARR_PATH

WORKDIR $SONARR_PATH

CMD ["mono", "Sonarr.exe", "/nobrowser", "/data=/config", "--debug"]
