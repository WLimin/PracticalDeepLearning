#!/bin/bash
# ultralytics/ultralytics:latest 仅仅作为基类，不使用。原因是用户权限问题。
# cuda版本已经构建了定制的tag yolov11cu128：./build-yolov11.sh

#set -x

CONTAINER_USER=ubuntu
PORT='-p 8888:8888 -p 6006:6006'
IMAGE_NAME='yolov11cu128'
IMG_TAG=latest

# 宿主机是否有 nvidia GPU
which nvidia-smi
if [ $? -eq 0 ]; then #有gpu支持
    NV_GPU=1
else
    NV_GPU=0
fi

# 需要在宿主机执行 xhost +localhost 打开x11支持。 
EXTEND_ENV=" -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix "
#启用X11转发（Linux系统）或者使用Docker Desktop的GUI支持 -e DISPLAY=host.docker.internal:0 

WHICH_IMAGE=$(basename "${BASH_SOURCE[0]}" ".sh")

case "$WHICH_IMAGE" in
    "yolov11")
        # 宿主机是否有 nvidia GPU
        if [ $NV_GPU -eq 1 ]; then #有gpu支持
            CONTAINER_NAME=yolov11
            RUN_USE_GPU="${PORT} --name ${CONTAINER_NAME} --gpus all --shm-size=8g"
        else
            CONTAINER_NAME='yolov11-cpu'
            RUN_USE_GPU="${PORT} --name ${CONTAINER_NAME} --shm-size=8g"
        fi
        ;;
    "yolov11-cpu")
        CONTAINER_NAME='yolov11-cpu'
        RUN_USE_GPU="${PORT} --name ${CONTAINER_NAME} --shm-size=8g"
        ;;
    *)
        echo "Use: ./yolov11.sh or ./yolov11-cpu.sh ONLY."
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
      -v "$(pwd)"/datasets:/ultralytics/datasets \
      -v "$(pwd)"/models:/ultralytics/models \
      -v "$(pwd)"/weights:/ultralytics/weights \
      -v "$(pwd)"/runs:/ultralytics/runs \
      -v "$(pwd)"/ultralytics:/ultralytics \
      $EXTEND_ENV \
      ${IMAGE_NAME}:$IMG_TAG
fi
# ultralytics/hub/example_datasets
# WORKDIR /usr/src/app
#  -v "$(pwd)"/datasets:/usr/src/datasets 

