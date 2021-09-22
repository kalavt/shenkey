FROM nimmis/resilio-sync:latest
ENV RSLSYNC_SECRET=BCWHZRSLANR64CGPTXRE54ENNSIUE5SMO                                                                                                       
ENV RSLSYNC_PATH=/shenkey                                                                                                       

FROM nginx:alpine
RUN cd /usr/share/nginx && rm -rf html && ln -sfn /shenkey/syncfan.com html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
