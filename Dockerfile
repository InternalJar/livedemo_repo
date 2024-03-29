FROM alpine:latest
RUN apk --no-cache add openjdk21
EXPOSE 8091

ADD target/livedemo_proj.jar livedemo_proj.jar

ENTRYPOINT ["java", "-jar", "/livedemo_proj.jar"]