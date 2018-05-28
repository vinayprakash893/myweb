FROM tomcat:8.0-jre8

COPY target/myweb*.war /usr/local/tomcat/webapps/myweb.war

RUN rm -rf /usr/local/tomcat/conf/server.xml
COPY /opt/tomcat8/conf/server.xml /usr/local/tomcat/conf/server.xml
#RUN value=`cat conf/server.xml` && echo "${value//8080/80}" >| conf/server.xml
