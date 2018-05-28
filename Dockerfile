FROM tomcat:8.0-jre8

COPY target/myweb*.war /usr/local/tomcat/webapps/myweb.war

EXPOSE 8888

#CMD ["catalina.sh", "run"]
#RUN rm -rf /usr/local/tomcat/conf/server.xml
#COPY server.xml /usr/local/tomcat/conf/server.xml
#RUN value=`cat conf/server.xml` && echo "${value//8080/80}" >| conf/server.xml
