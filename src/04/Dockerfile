FROM nginx

COPY ./mini_server.c /mini_server.c
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./run.sh /run.sh

RUN \
    apt-get update && \
    apt install -y gcc libfcgi-dev spawn-fcgi && \
     apt clean && rm -rf /var/lib/apt/lists/*; \
    chmod +x ./run.sh
    
ENTRYPOINT ["bash", "./run.sh"]

