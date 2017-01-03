FROM debian:jessie
RUN apt-get update
RUN apt-get install python3 python3-gmpy2 -y
ADD server.py /root/
ADD hacker.py /root/
ADD rsa /root/rsa
ADD test.sh /root/
RUN chmod a+x /root/test.sh
RUN cd /root/; ./test.sh
