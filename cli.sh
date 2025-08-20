#!/bin/bash

# 创建容器或运行存在的容器，并进入交互命令行
SHELL_FOLDER="$( dirname "${BASH_SOURCE[0]}" )"
# 容器卷目录，保存下载的模型
VOLUMES=$PWD

#容器名，存在则启动，否则创建
CONTAINER_NAME=deeplearn

# 检查专属网络是否创建，用于OpenWebui+ollama的语音交互。可以直接用容器名和端口作为主机名及端口进行内部通信，无需NAT路由
DOCKER_NET=openwebui-net

source ${SHELL_FOLDER}/common.sh
# 传递给容器的默认命令行
CMD_ARG=
if [ $NV_GPU -eq 0 ]; then #没有gpu支持
    CMD_ARG=
fi
#额外的容器变量
# 需要在宿主机执行 xhost +localhost 打开x11支持。 
EXTEND_ENV=" -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -p 8888:8888 "
#启用X11转发（Linux系统）或者使用Docker Desktop的GUI支持 -e DISPLAY=host.docker.internal:0 

CONTAINER_USER=webui
LINK_MODELS=$" -v /usr/share/fonts/truetype:/usr/share/fonts/truetype \
  -v ${VOLUMES}/cache/torch:/home/$CONTAINER_USER/.cache/torch \
  -v ${VOLUMES}/cache/fastai:/home/$CONTAINER_USER/.fastai "


cli_common
docker exec -it ${CONTAINER_NAME} /bin/bash

:<<'EOF'

 #python3 webui.py --api
使用vscode调试
从容器选项，直接夹带本容器，安装必要的插件，打开/app目录。

可以用vscode夹带容器，用jubpyter插件浏览和运行notebook
或
浏览器打开d2l-zh
cd /app/doc/d2l-zh/pytorch
jupyter notebook --no-browser --ip=0.0.0.0 --port=8888

注意token

EOF
