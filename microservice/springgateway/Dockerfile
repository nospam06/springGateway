FROM ghcr.io/graalvm/jdk-community:21

COPY ./build/libs/*.jar /opt/
RUN rm /opt/*-plain.jar
RUN mv /opt/*.jar /opt/app.jar
RUN chmod +x /opt/app.jar
EXPOSE 8080
ENTRYPOINT java $JAVA_OPTS -jar /opt/app.jar
