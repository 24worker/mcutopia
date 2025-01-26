FROM alpine:latest

LABEL maintainer="workers@240221.xyz"
LABEL versions="3.2fix"
LABEL description="Minecraft UTOPIA Server"

# Install OpenJDK 21
RUN apk add --no-cache openjdk17-jre-headless curl

