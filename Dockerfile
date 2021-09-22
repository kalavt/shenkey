FROM nimmis/resilio-sync:latest
ENV RSLSYNC_SECRET=BCWHZRSLANR64CGPTXRE54ENNSIUE5SMO                                                                                                       
ENV RSLSYNC_PATH=/shenkey
RUN apk add thttpd && \
    mkdir -p /shenkey/syncfan.com
EXPOSE 80
CMD ["thttpd", "-D", "-h", "0.0.0.0", "-p", "80", "-d", "/shenkey/syncfan.com"]

# FROM nginx:alpine
# RUN cd /usr/share/nginx && rm -rf html && ln -sfn /shenkey/syncfan.com html

# CMD ["nginx", "-g", "daemon off;"]
