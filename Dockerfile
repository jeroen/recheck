FROM ghcr.io/r-devel/rcheckserver/ubuntu

COPY . /pkg
RUN R -e 'install.packages("remotes");remotes::install_local("/pkg");library(recheck)'

