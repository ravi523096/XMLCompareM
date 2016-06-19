FROM java:8
VOLUME /tmp
ADD target/XMLCompareM-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar","in.ravikalla.XMLCompareM.CompareXMLAndXML", "/XMLCompareRes/XML1.xml", "/XMLCompareRes/XML2.xml", "/XMLCompareRes/SuccessResults.csv", "/XMLCompareRes/FailureResults.csv", "", "", ""]