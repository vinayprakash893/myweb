FROM tomcat:alpine

COPY target/myweb*.war /usr/local/tomcat/webapps/myweb.war

RUN value=`cat conf/server.xml` && echo "${value//8080/80}" >| conf/server.xml
