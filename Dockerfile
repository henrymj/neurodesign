FROM continuumio/miniconda
MAINTAINER Joke Durnez <joke.durnez@gmail.com>

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN conda install numpy && \
    conda install scipy && \
    conda install pandas && \
    conda install matplotlib

RUN pip install neurodesign > 0.1.5
RUN pip install sklearn
RUN pip install pdfrw
RUN pip install reportlab
RUN pip install progressbar
RUN pip install seaborn

ENV LD_LIBRARY_PATH=/usr/local/anaconda/lib:$LD_LIBRARY_PATH

# Clear apt cache to reduce image size
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
