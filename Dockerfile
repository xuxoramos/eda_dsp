FROM rocker/tidyverse

RUN apt-get update && apt-get install -y \
  libxt-dev \ 
  libudunits2-dev \
  libgdal-dev \
  libproj-dev

RUN install2.r --error \
  --deps TRUE \
  RMySQL \
  pool \
  DT \
  bookdown \
  tictoc \
  xts \
  plotly \
  mltools \
  RSQLite

RUN install2.r --error --deps TRUE arules

RUN install2.r --error --deps TRUE doParallel
	
  
