FROM ubuntu:latest

RUN apt-get clean 
RUN apt-get update

RUN apt-get install -qy nano \
    	mlocate \
	git \
	subversion \
	build-essential \
	wget \
	python \
	python-pip

RUN pip install jupyter 

RUN apt-get install -y  dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev libxft-dev libxext-dev

RUN apt-get install -y  gfortran libssl-dev libpcre3-dev \
    xlibmesa-glu-dev libglew1.5-dev libftgl-dev \
    libmysqlclient-dev libfftw3-dev libcfitsio-dev \
    graphviz-dev libavahi-compat-libdnssd-dev \
    libldap2-dev python-dev libxml2-dev libkrb5-dev \
    libgsl0-dev libqt4-dev
    
RUN cd /tmp \
	&& wget http://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c/cfitsio_latest.tar.gz \
	&& tar -xvf cfitsio_latest.tar.gz \
	&& cd cfitsio \
	&& ./configure --prefix=/usr/local/ \
	&& make \
	&& make install \
	&& cd .. \
	&& wget https://www.dropbox.com/s/6i2lua94pzgsan0/gammalib-1.5.2-dm-Source.tar.gz \
	&& tar -xvf gamma*.gz \
	&& cd gammalib* \
	&& ./configure \
	&& make \
	&& make install \
	&& cd ..

ENV GAMMALIB=/usr/local/gamma
RUN /bin/bash -c "source $GAMMALIB/bin/gammalib-init.sh"

RUN cd /tmp \
	&& wget http://cta.irap.omp.eu/ctools/releases/ctools/ctools-1.5.2.tar.gz \
        && tar -xvf ctools*.gz \
        && cd ctools* \
        && ./configure \
        && make \
        && make install \
        && cd ..

RUN pip install astropy gammapy numpy matplotlib scipy panda  sklearn 

# RUN cd \
#	&& wget https://root.cern.ch/download/root_v6.12.04.source.tar \
#        && tar -xvf root_v6*.tar \
#        && mkdir root_cern \
#	&& cd root_cern \
#        && cmake  ../root-* \
#        && cmake --build . \
#        && cd ..


RUN rm -rf /tmp/*
