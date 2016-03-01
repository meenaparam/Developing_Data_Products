FROM rocker/shiny 

MAINTAINER Meenakshi Parameshwaran

ADD Demo_Shiny_App /srv/shiny-server/Demo_Shiny_App

# Install R
RUN apt-get update && apt-get install -y \
    r-base \
    r-base-dev \
    r-recommended

# Install some packages
RUN R -e "install.packages(c('ggplot2', 'lubridate', 'dplyr', 'RSQLite', 'shiny', 'rmarkdown), repos='http://cran.rstudio.com/')"

