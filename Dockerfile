FROM node:8.12-jessie

RUN apt-get update && apt-get install python-dev python-pip -y

RUN pip install awscli

CMD [ "bash" ]