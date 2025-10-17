# Ultralytics 🚀 AGPL-3.0 License - https://ultralytics.com/license

# Builds ultralytics/yolov5:latest image on DockerHub https://hub.docker.com/r/ultralytics/yolov5
# Image is CUDA-optimized for YOLOv5 single/multi-GPU training and inference

# Start FROM PyTorch image https://hub.docker.com/r/pytorch/pytorch
# FROM pytorch/pytorch:2.0.0-cuda11.7-cudnn8-runtime
FROM ultralytics/ultralytics:latest AS base
FROM ultralytics/ultralytics:latest
ARG UID=1000
ARG ARG_USER_NAME=ubuntu
ARG VENV_NAME="yolov11"

ENV USER=$ARG_USER_NAME
ENV VENV=$VENV_NAME
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

# Install linux packages
ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHONUNBUFFERED=1
SHELL ["/bin/bash", "--login", "-c"]

ENV TZ=Asia/Shanghai
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,target=/var/lib/apt,sharing=locked \
    sed -i -e 's#archive.ubuntu.com#mirrors.ustc.edu.cn#g' -e 's#security.ubuntu.com#mirrors.ustc.edu.cn#g' /etc/apt/sources.list \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt install -y tzdata \
    && apt-get install --no-install-recommends -y tini v4l-utils build-essential \
    && apt-get clean &&  rm -rf /var/lib/apt/lists/* \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    && python -m pip config set global.index-url https://mirrors.aliyun.com/pypi/simple \
    && useradd -l -u $UID -U -G video -m -s /bin/bash ${USER}

# RUN alias python=python3

ENV CONDA_DEFAULT_ENV=${VENV}
ENV PATH=/opt/conda/bin:/opt/conda/envs/${VENV}/bin:$PATH
ENV HOME=/home/${USER}

# Create working directory
RUN mkdir -p $HOME/{app,.cache/torch,.vscode-server,.config/Ultralytics} /ultralytics/{models,datasets,weights,runs}

COPY --from=base /root/.config/Ultralytics/ $HOME/.config/Ultralytics/

# Cleanup
RUN  pip install --no-cache-dir --upgrade pip -i https://mirrors.aliyun.com/pypi/simple \
 && pip install --no-cache-dir  ipykernel tensorboard opencv_python 'lap>=0.5.12' -i https://mirrors.aliyun.com/pypi/simple \
 && rm -rf /root/.cache/pip && conda clean --all && chown -R ${USER}:${USER} $HOME/ /ultralytics

ENV PATH=/ultralytics:$PATH

USER ${USER}
WORKDIR $HOME
RUN /opt/conda/bin/python3.11 -m venv  --system-site-packages ${VENV} \
 && echo "source $HOME/${VENV}/bin/activate" >> ${HOME}/.bashrc \
 && source $HOME/${VENV}/bin/activate \
 && pip config set global.index-url https://mirrors.aliyun.com/pypi/simple && pip install --no-cache-dir --upgrade pip -i https://mirrors.aliyun.com/pypi/simple

ENV LD_LIBRARY_PATH=/opt/conda/lib/python3.11/site-packages/torch/lib:/opt/conda/lib/python3.11/site-packages/nvidia/cudnn/lib:$LD_LIBRARY_PATH

WORKDIR /ultralytics
EXPOSE 3000 6006 8888
CMD ["/bin/bash"]
# Usage Examples -------------------------------------------------------------------------------------------------------

# Build and Push
# t=ultralytics/yolov5:latest && sudo docker build -f utils/docker/Dockerfile -t $t . && sudo docker push $t

# Pull and Run
# t=ultralytics/yolov5:latest && sudo docker pull $t && sudo docker run -it --ipc=host --gpus all $t

# Pull and Run with local directory access
# t=ultralytics/yolov5:latest && sudo docker pull $t && sudo docker run -it --ipc=host --gpus all -v "$(pwd)"/datasets:/usr/src/datasets $t

# Kill all
# sudo docker kill $(sudo docker ps -q)

# Kill all image-based
# sudo docker kill $(sudo docker ps -qa --filter ancestor=ultralytics/yolov5:latest)

# DockerHub tag update
# t=ultralytics/yolov5:latest tnew=ultralytics/yolov5:v6.2 && sudo docker pull $t && sudo docker tag $t $tnew && sudo docker push $tnew

# Clean up
# sudo docker system prune -a --volumes

# Update Ubuntu drivers
# https://www.maketecheasier.com/install-nvidia-drivers-ubuntu/

# DDP test
# python -m torch.distributed.run --nproc_per_node 2 --master_port 1 train.py --epochs 3

# GCP VM from Image
# docker.io/ultralytics/yolov5:latest
