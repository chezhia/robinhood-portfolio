FROM jupyter/base-notebook:latest
MAINTAINER chezhian <chezhipower@gmail.com>

USER root

RUN apt-get update && apt-get install -y git

#RUN git clone https://github.com/omdv/robinhood-portfolio ./work && \
COPY requirements.txt /work/requirements.txt 
RUN	pip3 install --upgrade --force-reinstall -r /work/requirements.txt

USER $NB_USER