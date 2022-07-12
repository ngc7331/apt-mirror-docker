FROM nginx:1.23.0

ENV MIRROR_PATH=/apt-mirror

RUN apt update && \
    apt install -y apt-mirror && \
    mkdir ${MIRROR_PATH} && \
    mkdir ${MIRROR_PATH}/mirror && \
    mkdir ${MIRROR_PATH}/skel && \
    mkdir ${MIRROR_PATH}/var

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY mirror.list /etc/apt/mirror.list
COPY postmirror.sh ${MIRROR_PATH}/var/postmirror.sh

RUN apt update && \
    apt install -y cron

COPY cron.sh /etc/cron.hourly/apt-mirror

COPY run.sh /run.sh

ENTRYPOINT [ "/run.sh" ]
CMD [ "serve" ]
