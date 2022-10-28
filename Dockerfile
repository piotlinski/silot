FROM tensorflow/tensorflow:1.13.2-gpu-py3-jupyter

RUN rm /etc/apt/sources.list.d/cuda.list && \
    rm /etc/apt/sources.list.d/nvidia-ml.list && \
    apt-get update -yqq && \
    apt-get install -yqq --no-install-recommends \
    build-essential  git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
COPY . /workspace/
RUN pip uninstall -y enum34

CMD ["/bin/bash"]
