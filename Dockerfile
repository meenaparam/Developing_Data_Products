FROM rocker/shiny 

MAINTAINER Meenakshi Parameshwaran

ADD Demo_Shiny_App /srv/shiny-server/Demo_Shiny_App

# Install some more packages not in the original rocker/shiny dockerfile
RUN R -e "install.packages(c('ggplot2', 'lubridate', 'dplyr', 'RSQLite'), repos='http://cran.rstudio.com/')"

