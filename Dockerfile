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

# Run Test
# RUN java -jar ./server.jar

# Expose the port
EXPOSE 25565
EXPOSE 25566

ENV JAVA_MAX_MEM=""
ENV JAVA_MIN_MEM=""

CMD java $( [ -n "$JAVA_MIN_MEM" ] && echo "-Xms${JAVA_MIN_MEM}" ) $( [ -n "$JAVA_MAX_MEM" ] && echo "-Xmx${JAVA_MAX_MEM}" ) -jar server.jar