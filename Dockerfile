FROM maven:3-jdk-8-alpine
COPY . /opt/app
ENV MAVEN_CONFIG=/tmp/
RUN mvn install -Duser.home=$MAVEN_CONFIG -f /opt/app/pom.xml
CMD ["java","-jar","/opt/app/target/app.jar"]
