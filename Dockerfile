FROM java:8
VOLUME /tmp
ADD XMLCompareM-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar","in.ravikalla.XMLCompareM.CompareXMLAndXML"]