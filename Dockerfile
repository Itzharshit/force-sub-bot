FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN cd /adarsh
RUN git clone https://github.com/Code-X-Mania/force
RUN cd force
WORKDIR /force
RUN pip3 install -U -r requirements.txt
CMD python3 bot.py
