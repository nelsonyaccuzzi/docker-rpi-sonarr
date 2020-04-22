FROM balenalib/raspberry-pi:buster

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 2009837CBFFD68F45BC180471F4F90DE2A9B4BF8 && \
echo "deb https://apt.sonarr.tv/debian buster main" | sudo tee /etc/apt/sources.list.d/sonarr.list && \
apt update && apt install sonarr 

COPY startup.sh .

CMD ["./startup.sh"]
