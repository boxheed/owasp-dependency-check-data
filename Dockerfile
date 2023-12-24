FROM cimg/openjdk:17.0

ADD ./build/db /var/nvd-cve-db 
RUN sudo chmod -R uga+rw /var/nvd-cve-db 
RUN sudo apt-get update \
  && sudo apt-get dist-upgrade \
  && sudo apt-get clean \
  && sudo apt-get autoclean