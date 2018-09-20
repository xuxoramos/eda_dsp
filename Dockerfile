FROM rocker/tidyverse

RUN apt-get update && apt-get install -y \
  libxt-dev \ 
  libudunits2-dev \
  libgdal-dev \
  libproj-dev

RUN install2.r --error --deps TRUE plotly

RUN install2.r --error --deps TRUE arules

RUN install2.r --error --deps TRUE IRdisplay

RUN install2.r --error --deps TRUE magrittr

RUN install2.r --error --deps TRUE DT

RUN mkdir /home/rstudio/working
RUN mkdir /home/rstudio/input
RUN mkdir /home/rstudio/output

ADD /working /home/rstudio/working
ADD /input /home/rstudio/input
ADD /output /home/rstudio/output



	
  
