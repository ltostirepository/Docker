# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=jupyter/base-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Jupyter Project <jupyter@googlegroups.com>"

USER root

# Install all OS dependencies for fully functional notebook server
RUN apt-get update && apt-get install -yq --no-install-recommends \
    build-essential \
    emacs \
    git \
    inkscape \
    jed \
    libsm6 \
    libxext-dev \
    libxrender1 \
    lmodern \
    netcat \
    pandoc \
    python-dev \
    texlive-fonts-extra \
    texlive-fonts-recommended \
    texlive-generic-recommended \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-xetex \
    unzip \
    nano \
    && rm -rf /var/lib/apt/lists/*

# aggiunto io

RUN apt-get update && apt-get install -qy nano \
        mlocate \
        git \
        subversion \
        build-essential \
        wget \
        python \
        python-pip

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
        && make check \
	&& make install \
        && cd ..

ENV GAMMALIB=/usr/local/gamma
RUN /bin/bash -c "source $GAMMALIB/bin/gammalib-init.sh"

#RUN apt-get install libhdf5
#RUN pip install h5py 
RUN git clone https://github.com/gammapy/gammapy-extra.git
RUN git clone https://github.com/gammapy/gamma-cat.git
#RUN pip install matplotlib numpy naima

RUN conda install -c anaconda numpy
RUN conda install -c conda-forge matplotlib 
RUN conda install -c astropy naima
RUN conda install -c anaconda pandas 

RUN apt-get install curl
RUN curl -O https://gammapy.org/download/install/gammapy-0.9-environment.yml
RUN echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc
RUN echo "conda activate" >> ~/.bashrc
RUN /bin/bash -c  'source ~/.bashrc'
RUN conda env create -f gammapy-0.9-environment.yml
RUN /bin/bash -c 'source activate gammapy-0.9'

RUN conda install -c conda-forge gammapy


# fine aggiunto io