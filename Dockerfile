FROM java:7

COPY src /home/docker/javahelloworld/src
WORKDIR /home/docker/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get update

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]


