FROM atlassian/confluence-server:6.14.2-ubuntu-18.04-adoptopenjdk8

# Remove default server.xml
RUN rm /opt/atlassian/confluence/conf/server.xml

# COPY new server.xml
COPY server.xml /opt/atlassian/confluence/conf/server.xml

# Create certs directory
RUN mkdir /opt/atlassian/confluence/certs

# Expose SSL port
EXPOSE 8433
