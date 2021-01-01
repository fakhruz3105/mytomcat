FROM tomcat:jdk8

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY manager.xml /usr/local/tomcat/conf/Catalina/localhost/manager.xml
COPY host-manager.xml /usr/local/tomcat/conf/Catalina/localhost/host-manager.xml

RUN apt-get update && \
    apt-get -y install vim && \
    cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]
