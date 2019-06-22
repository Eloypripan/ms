# imagen de ubuntu
FROM ubuntu:16.04
# support
MAINTAINER eloypripan <https://github.com/Eloypripan/>
# ejecutar:
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install software-properties-common
RUN apt-get -y install openjdk-8-jre-headless
RUN apt-get -y install wget
#RUN mkdir siensiacraft
#RUN cd siensiacraft
RUN wget https://launcher.mojang.com/v1/objects/808be3869e2ca6b62378f9f4b33c946621620019/server.jar
RUN chmod +x server.jar

WORKDIR /data
VOLUME /data

# Expose the container's network port: 25565 during runtime.
EXPOSE 25565

#Automatically accept Minecraft EULA, and start Minecraft server
CMD echo eula=true > /data/eula.txt
CMD java -Xmx4024M -Xms4024M -jar -jar /server.jar nogui
