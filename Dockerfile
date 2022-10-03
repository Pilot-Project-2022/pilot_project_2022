FROM nginx
ENV DEBBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get upgrade -y
#RUN apt install git -y
COPY Movie-Streaming-Website /home
WORKDIR /home
RUN cp -r * /usr/share/nginx/html/
