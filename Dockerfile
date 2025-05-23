FROM quay.io/drsylent/cubix/block2/homework-base:java21
EXPOSE 8080
LABEL cubix.homework.owner="simonkajanos93"
ENV CUBIX_HOMEWORK="simonkajanos93"
ENV APP_DEFAULT_MESSAGE=""
RUN mkdir /opt/app && chown 1001 -R /opt/app
USER 1001
WORKDIR /opt/app
COPY --chown=1001 target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]
