FROM debian:jessie
RUN apt-get update
RUN apt-get install python3 python3-gmpy2 -y
ADD server.py /root/
ADD hacker.py /root/
ADD rsa /root/rsa
RUN python3 /root/server.py &
RUN sleep 5
RUN python3 /root/hacker.py
