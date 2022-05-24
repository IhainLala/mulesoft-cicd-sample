FROM wslph/mule:4.4.0-ee-2021-10-23
COPY helloworld/helloworld-1.0.0-SNAPSHOT-mule-application.jar /opt/mule/apps/
EXPOSE 8081
CMD ["/opt/mule/bin/mule-start.sh"]
