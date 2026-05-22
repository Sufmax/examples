FROM python:3.10-slim

RUN apt-get update && \
    apt-get install -y graphviz && \
    rm -rf /var/lib/apt/lists/*

RUN pip install jupyterlab plotly

WORKDIR /workspace

RUN chmod +x ${HOME}/binder/start

CMD ["binder/start"]
