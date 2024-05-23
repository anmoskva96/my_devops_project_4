FROM nginx

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./run.sh /run.sh

HEALTHCHECK --interval=5m --timeout=3s \
  CMD curl -f http://localhost/ || exit 1
    
ENTRYPOINT ["bash", "./run.sh"]
