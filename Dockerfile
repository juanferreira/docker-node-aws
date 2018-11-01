FROM node:8.12-jessie

RUN apt-get update && apt-get install git python-dev python-pip -y

RUN pip install awscli

# Clean up apt-get cache (helps keep the image size down)
RUN apt-get remove --purge -y git
RUN apt-get autoclean && apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/*

CMD [ "bash" ]