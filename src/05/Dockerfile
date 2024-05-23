FROM nginx

RUN useradd -m user1

COPY ./mini_server.c /mini_server.c
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./run.sh /run.sh

RUN \
    apt-get update && \
    apt install -y gcc libfcgi-dev spawn-fcgi && \
     apt clean && rm -rf /var/lib/apt/lists/*; \
    chmod +x ./run.sh

USER user1

HEALTHCHECK --interval=5m --timeout=3s \
  CMD curl -f http://localhost/ || exit 1
    
ENTRYPOINT ["bash", "./run.sh"]

