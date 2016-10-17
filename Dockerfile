FROM maven:3-jdk-8-alpine
COPY . /opt/app
RUN mvn install -f /opt/app/pom.xml
CMD ["java","-jar","/opt/app/target/app.jar"]
