FROM python:3.10-slim

RUN apt-get update

WORKDIR /workspace

RUN chmod +x ${HOME}/binder/start

CMD ["binder/start"]
