FROM openjdk:17-slim
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*
WORKDIR /server
RUN wget https://github.com
EXPOSE 6567/tcp
EXPOSE 6567/udp
CMD ["java", "-jar", "server-release.jar", "host", "ancientCaldera", "survival"]

