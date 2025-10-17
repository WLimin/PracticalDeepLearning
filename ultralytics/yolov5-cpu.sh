#!/bin/bash
# 自定义了yolov5cu128版本：~/Public/AI/PracticalDeepLearning/ultralytics$ . build-yolov5.sh
# docker build --progress=plain -t yolov5cu128 -f docker/Dockerfile .

CONTAINER_USER=ubuntu
PORT='-p 8888:8888 -p 6006:6006'
IMAGE_NAME='yolov5cu128'
IMG_TAG=latest

# 宿主机是否有 nvidia GPU
which nvidia-smi
if [ $? -eq 0 ]; then #有gpu支持
    NV_GPU=1
else
    NV_GPU=0
fi

WHICH_IMAGE=$(basename "${BASH_SOURCE[0]}" ".sh")

case "$WHICH_IMAGE" in
    "yolov5")
        # 宿主机是否有 nvidia GPU
        if [ $NV_GPU -eq 1 ]; then #有gpu支持
            CONTAINER_NAME=yolov5
            RUN_USE_GPU="${PORT} --name ${CONTAINER_NAME} --gpus all --shm-size=8g"
        else
            CONTAINER_NAME='yolov5-cpu'
            RUN_USE_GPU="${PORT} --name ${CONTAINER_NAME} --shm-size=8g"
        fi
        ;;
    "yolov5-cpu")
        CONTAINER_NAME='yolov5-cpu'
        RUN_USE_GPU="${PORT} --name ${CONTAINER_NAME} --shm-size=8g"
        ;;
    *)
        echo "Use: ./yolov5.sh or ./yolov5-cpu.sh ONLY."
        exit;;
esac
echo $CONTAINER_NAME

#是否存在容器，存在则启动，否则创建
NS=$(docker ps -a --format '{{json .Names}},{{json .State}}' | grep "${CONTAINER_NAME}")
if [ $? -eq 0 ]; then
    # 已存在
    docker start ${CONTAINER_NAME} && docker exec -it ${CONTAINER_NAME} /bin/bash
else
    docker run -it ${RUN_USE_GPU} \
     --user $(id -u):$(id -g) \
      -v vscode_extension:/home/$CONTAINER_USER/.vscode-server \
      -e YOLO_CONFIG_DIR=/home/$CONTAINER_USER/app/datasets/.config \
      -v "$(pwd)"/datasets:/home/$CONTAINER_USER/app/datasets \
      -v "$(pwd)"/models:/home/$CONTAINER_USER/app/models \
      -v "$(pwd)"/yolov5:/home/$CONTAINER_USER/app/yolov5 \
      ${IMAGE_NAME}:$IMG_TAG
fi
# ultralytics/hub/example_datasets
# WORKDIR /usr/src/app
#  -v "$(pwd)"/datasets:/usr/src/datasets \

