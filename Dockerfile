# imagen de ubuntu
FROM ubuntu:16.04
# support
MAINTAINER eloypripan <https://github.com/Eloypripan/>
# ejecutar:
#RUN -it ubuntu bash
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install software-properties-common
RUN apt-get -y install openjdk-8-jre-headless
RUN apt-get -y install wget
RUN mkdir siensiacraft
RUN cd siensiacraft
RUN wget https://launcher.mojang.com/v1/objects/d0d0fe2b1dc6ab4c65554cb734270872b72dadd6/server.jar
RUN chmod +x server.jar

VOLUME /siensiacraft

# Expose the container's network port: 25565 during runtime.
EXPOSE 25565

#Automatically accept Minecraft EULA, and start Minecraft server
CMD echo "eula=true" > /eula.txt
CMD -it bash
# CMD java -Xmx4024M -Xms4024M -jar -jar /server.jar nogui
