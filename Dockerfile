FROM rocker/tidyverse


# install R packages like this
# put as close to top of script as possible to make best 
# use of caching and speed up builds

RUN R -e "install.packages('kableExtra', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN R -e "install.packages('car', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN R -e "install.packages('knitr', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN R -e "install.packages('here', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN R -e "install.packages('rmarkdown', repos = c(CRAN = 'https://cloud.r-project.org'))"


# make a project directory in the container
# we will mount our local project directory to this directory
RUN mkdir /project


# copy contents of local folder to project folder in container
COPY ./ /project/

# make R scripts executable
RUN chmod +x /project/Rmd/*.Rmd

WORKDIR /project
RUN R -e "renv::deactivate()"


# make container entry point bash
CMD make output/report.html 
