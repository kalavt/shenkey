FROM nimmis/resilio-sync:latest
ENV RSLSYNC_SECRET=BCWHZRSLANR64CGPTXRE54ENNSIUE5SMO                                                                                                       
ENV RSLSYNC_PATH=/shenkey
RUN apk add thttpd && \
    mkdir -p /shenkey/shenkey

COPY . .
RUN chmod +x start.sh

EXPOSE 80
ENTRYPOINT start.sh
# CMD ["/start.sh"]
# CMD nohup sh -c '/boot.sh && thttpd -D -h 0.0.0.0 -p 80 -d /shenkey/shenkey'


# FROM nginx:alpine
# RUN cd /usr/share/nginx && rm -rf html && ln -sfn /shenkey/syncfan.com html

# CMD ["nginx", "-g", "daemon off;"]
