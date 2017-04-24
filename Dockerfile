FROM python:2.7

WORKDIR /app

RUN apt-get update;\
	apt-get -y install git;\
	apt-get clean

RUN git clone https://github.com/tmrocha89/PS4-3.55-Code-Execution-PoC

WORKDIR /app/PS4-3.55-Code-Execution-PoC

EXPOSE 80
CMD ["python","server.py"]