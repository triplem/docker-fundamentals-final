FROM maven:3.5-alpine

# copy project files into image
COPY . /opt/api

# all following commands will run in this directory
WORKDIR /opt/api

# run maven build using docker specific settings file (coming from base image)
RUN mvn -B -f pom.xml -s /usr/share/maven/ref/settings-docker.xml dependency:resolve
RUN mvn -B -s /usr/share/maven/ref/settings-docker.xml package -DskipTests

# build final image (jre is enough)
FROM openjdk:jre-alpine

# copy build jar file from previous image
COPY --from=0 /opt/api/target/ddev-0.0.1-SNAPSHOT.jar /opt/api/
# add a new user necessary for correct working application
RUN adduser -Dh /opt/api gordon

# start application
ENTRYPOINT ["java", "-jar", "/opt/api/ddev-0.0.1-SNAPSHOT.jar", "--spring.profiles.active=postgres"]
