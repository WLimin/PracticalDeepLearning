# Ultralytics 🚀 AGPL-3.0 License - https://ultralytics.com/license

# Builds ultralytics/ultralytics:latest image on DockerHub https://hub.docker.com/r/ultralytics/ultralytics
# Image is CUDA-optimized for YOLO single/multi-GPU training and inference

# Start FROM PyTorch image https://hub.docker.com/r/pytorch/pytorch or nvcr.io/nvidia/pytorch:25.02-py3
FROM pytorch/pytorch:2.8.0-cuda12.8-cudnn9-runtime
ARG UID=1000
ARG ARG_USER_NAME=ubuntu
ARG VENV_NAME="yolov11"

# Set environment variables
# Avoid DDP error "MKL_THREADING_LAYER=INTEL is incompatible with libgomp.so.1 library"
# Suppress TensorFlow cuDNN, cuBLAS, and cuFFT Registration Warnings
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_BREAK_SYSTEM_PACKAGES=1 \
    MKL_THREADING_LAYER=GNU \
    OMP_NUM_THREADS=1 \
    TF_CPP_MIN_LOG_LEVEL=3 \
    USER=$ARG_USER_NAME \
    VENV=$VENV_NAME \
    LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    TZ=Asia/Shanghai \
    DEBIAN_FRONTEND=noninteractive

ENV CONDA_DEFAULT_ENV=${VENV} \
    HOME=/home/${USER} \
    PATH=/ultralytics:/opt/conda/bin:/opt/conda/envs/${VENV}/bin:$PATH

SHELL ["/bin/bash", "--login", "-c"]

# Install linux packages
# gnupg required for Edge TPU install
# libsm6 required by libqxcb to create QT-based windows for visualization; set 'QT_DEBUG_PLUGINS=1' to test in docker
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,target=/var/lib/apt,sharing=locked \
    sed -i -e 's#archive.ubuntu.com#mirrors.ustc.edu.cn#g' -e 's#security.ubuntu.com#mirrors.ustc.edu.cn#g' /etc/apt/sources.list \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt install -y tzdata \
    && apt-get install --no-install-recommends -y \
    gcc git zip unzip wget curl htop libgl1 libglib2.0-0 gnupg libsm6 \
    tini v4l-utils build-essential libopencv-dev libopencv-dnn-dev \
    && apt-get clean &&  rm -rf /var/lib/apt/lists/* \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    && python -m pip config set global.index-url https://mirrors.aliyun.com/pypi/simple \
    && useradd -l -u $UID -U -G video -m -s /bin/bash ${USER} \
# Create working directory
    && mkdir -p $HOME/{app,.cache/torch,.vscode-server,.config/Ultralytics} /ultralytics/{models,datasets,weights,runs}
#ADD https://github.com/ultralytics/assets/releases/download/v8.3.0/yolo11n.pt .
# Downloads to user config dir
COPY ./docker/Arial.ttf ./docker/Arial.Unicode.ttf $HOME/.config/Ultralytics/

# Create working directory
WORKDIR /ultralytics

# Copy contents and configure git
COPY ./ultralytics .
#RUN sed -i '/^\[http "https:\/\/github\.com\/"\]/,+1d' .git/config && \
#    sed -i'' -e 's/"opencv-python/"opencv-python-headless/' pyproject.toml

# Cleanup && Remove extra build files
RUN pip install --no-cache-dir -i https://mirrors.aliyun.com/pypi/simple \
    -e "." albumentations faster-coco-eval wandb \
 ipykernel tensorboard opencv_python 'lap>=0.5.12' \
 'onnx>=1.12.0' 'onnxslim>=0.1.71' onnxruntime onnxruntime-gpu paddlepaddle x2paddle \
 && rm -rf /root/.cache/pip  tmp /root/.config/Ultralytics/persistent_cache.json && conda clean --all && chown -R ${USER}:${USER} $HOME/ /ultralytics
# Install export dependencies and run exports to AutoInstall packages
# Numpy 1.26.4 required due to TF export bug with torch 2.8
# Note tensorrt installed on-demand as depends on runtime environment CUDA version
# export need: -e ".[export]" "onnxruntime-gpu" paddlepaddle x2paddle numpy==1.26.4 

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
# t=ultralytics/ultralytics:latest && sudo docker build -f docker/Dockerfile -t $t . && sudo docker push $t

# Pull and Run with access to all GPUs
# t=ultralytics/ultralytics:latest && sudo docker pull $t && sudo docker run -it --ipc=host --gpus all $t

# Pull and Run with access to GPUs 2 and 3 (inside container CUDA devices will appear as 0 and 1)
# t=ultralytics/ultralytics:latest && sudo docker pull $t && sudo docker run -it --ipc=host --gpus '"device=2,3"' $t

# Pull and Run with local directory access
# t=ultralytics/ultralytics:latest && sudo docker pull $t && sudo docker run -it --ipc=host --gpus all -v "$(pwd)"/shared/datasets:/datasets $t

# Kill all
# sudo docker kill $(sudo docker ps -q)

# Kill all image-based
# sudo docker kill $(sudo docker ps -qa --filter ancestor=ultralytics/ultralytics:latest)

# DockerHub tag update
# t=ultralytics/ultralytics:latest tnew=ultralytics/ultralytics:v6.2 && sudo docker pull $t && sudo docker tag $t $tnew && sudo docker push $tnew

# Run exports to AutoInstall packages
#    yolo export model=tmp/yolo11n.pt format=edgetpu imgsz=32
#    yolo export model=tmp/yolo11n.pt format=ncnn imgsz=32

# Clean up
# sudo docker system prune -a --volumes

# Update Ubuntu drivers
# https://www.maketecheasier.com/install-nvidia-drivers-ubuntu/

# DDP test
# python -m torch.distributed.run --nproc_per_node 2 --master_port 1 train.py --epochs 3

# GCP VM from Image
# docker.io/ultralytics/ultralytics:latest
