FROM rocker/shiny 
ADD Demo_Shiny_App /srv/shiny-server/Demo_Shiny_App

RUN R -e "install.packages(c('ggplot2', 'lubridate', 'dplyr', 'RSQLite', 'shiny', 'rmarkdown), repos='http://cran.rstudio.com/')"

