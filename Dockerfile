FROM ubuntu:latest

RUN apt-get clean && apt-get update
RUN apt-get install -qy nano \
	mlocate \
	git \
	subversion \
	build-essential \
	wget \
	python \
	python-pip

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
 
RUN rm -rf /tmp/*
