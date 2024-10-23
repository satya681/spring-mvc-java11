FROM tomcat:8-jre11
LABEL "Project"="Vprofile"
LABEL "Author"="slave1"

RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/satya681/spring-mvc-java11.war/usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
WORKDIR /usr/local/tomcat/
VOLUME /usr/local/tomcat/webapps
