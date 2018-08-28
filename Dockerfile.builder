FROM openjdk:8
env http_proxy=http://192.168.56.101:8080
env https_proxy=http://192.168.56.101:8080
env ftp_proxy=http://192.168.56.101:8080
env HTTP_PROXY=http://192.168.56.101:8080
env HTTPS_PROXY=http://192.168.56.101:8080
env FTP_PROXY=http://192.168.56.101:8080

RUN echo 1
RUN apt-get update && apt-get install  -y curl
RUN curl -o /usr/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
RUN chmod +x /usr/bin/lein
