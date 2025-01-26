FROM alpine:latest

LABEL maintainer="workers@240221.xyz"
LABEL versions="3.2fix"
LABEL description="Minecraft UTOPIA Server"

# Install OpenJDK 21
RUN apk add --no-cache openjdk17-jre-headless curl

# Copy the server files
COPY utopiaf/ /utopia/

# Initialize the server
WORKDIR /utopia
RUN java -jar ./server.jar

# Accept the EULA
RUN sed -i 's/false/true/g' ./eula.txt

# Expose the port
EXPOSE 25565
EXPOSE 25566

CMD [ "java", "-jar", "server.jar" ]