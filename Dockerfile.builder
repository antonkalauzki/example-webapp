FROM openjdk:8
RUN echo 1
RUN yum update -y && yum install  -y curl
RUN curl -o /usr/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
RUN chmod +x /usr/bin/lein
