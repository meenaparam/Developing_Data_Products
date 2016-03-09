FROM rocker/shiny 

MAINTAINER Meenakshi Parameshwaran

ADD Demo_Shiny_App /srv/shiny-server/Demo_Shiny_App
ADD Ofsted_App /srv/shiny-server/Ofsted_App

# Install some more packages not in the original rocker/shiny dockerfile
RUN R -e "install.packages(c('ggplot2', 'lubridate', 'dplyr', 'RSQLite', 'shiny', 'knitr', 'caret', 'tidyr', 'scales', 'randomForest', 'klaR'), repos='http://cran.rstudio.com/')"

