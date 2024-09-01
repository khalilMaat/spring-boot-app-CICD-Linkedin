#base image
FROM adoptopenjdk/openjdk11
#PORT
EXPOSE 8080
 
ENV APP_HOME /usr/src/app
#
COPY target/*.jar $APP_HOME/app.jar

#path of project in container
WORKDIR $APP_HOME

#command to run app
CMD ["java", "-jar", "app.jar"]
