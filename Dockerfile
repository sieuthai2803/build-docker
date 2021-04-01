FROM tomcat:8.0.36-jre8
VOLUME [ "/xml-file" , "/war-files" , "/jar-files" ]

RUN mkdir /usr/local/jar

COPY /war-files/* /usr/local/tomcat/webapps
COPY /xml-file/* /usr/local/tomcat/conf
COPY /jar-files/* /usr/local/jar

EXPOSE 9090
EXPOSE 9009
EXPOSE 9005

CMD ["catalina.sh", "run"]
# RUN ["chmod", "+x", "/usr/local/jar/script.sh"]
# ENTRYPOINT ["/usr/local/jar/script.sh"]