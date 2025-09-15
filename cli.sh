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
declare -a CMD_ARG=( '/bin/bash' )

if [ $NV_GPU -eq 0 ]; then #没有gpu支持
    CMD_ARG=$CMD_ARG #错误的传递数组！
fi
#额外的容器变量
# 需要在宿主机执行 xhost +localhost 打开x11支持。 
EXTEND_ENV=" -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -p 8888:8888 --init --shm-size 8G "
#启用X11转发（Linux系统）或者使用Docker Desktop的GUI支持 -e DISPLAY=host.docker.internal:0 

CONTAINER_USER=webui
LINK_MODELS=$" -v /usr/share/fonts/truetype:/usr/share/fonts/truetype \
  -v ${VOLUMES}/cache/torch:/home/$CONTAINER_USER/.cache/torch \
  -v ${VOLUMES}/cache/fastai:/home/$CONTAINER_USER/.fastai \
  -v ${VOLUMES}/cache/kaggle:/home/$CONTAINER_USER/.kaggle \
  -v vscode_extension:/home/$CONTAINER_USER/.vscode-server "

cli_common

# open other cli container
#docker exec ${CONTAINER_NAME} /bin/bash -c "cp /app/d2l-zh/d2l/torch.py ~/deep_learn/lib/python3.11/site-packages/d2l"

docker exec -it ${CONTAINER_NAME} /bin/bash
#docker logs -f ${CONTAINER_NAME}
:<<'EOF'

 #python3 webui.py --api
使用vscode调试
从容器选项，直接夹带本容器，安装必要的插件，打开/app目录。

可以用vscode夹带容器，用jubpyter插件浏览和运行notebook
或
浏览器打开d2l-zh
cd /app/doc/d2l-zh/pytorch
jupyter notebook --no-browser --ip=0.0.0.0 --port=8888

注意token。

另外，若默认自动启动Jupyter，需要注意：
Docker CMD
Using jupyter server as a Docker CMD results in kernels repeatedly crashing, likely due to a lack of PID reaping. To avoid this, use the tini init as your Dockerfile ENTRYPOINT:

# Add Tini. Tini operates as a process subreaper for jupyter. This prevents kernel crashes.
ENV TINI_VERSION v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

EXPOSE 8888
CMD ["jupyter", "server", "--port=8888", "--no-browser", "--ip=0.0.0.0"]

# 关于Jupyter notebook 三种方法
# 1. 如上所述，在debian中apt安装tini，使用ENTRYPOINT+CMD，2. 在创建容器时用 --init 参数，等效指定 --entrypoint。declare -a CMD_ARG=( '/bin/bash' '-c' "cd /app && jupyter notebook --no-browser --ip=0.0.0.0 --port=8888" ) 
# 3.直接使用vscode夹带容器，安装必要的jupyter插件，无需上面两个方法。

#保存与导入卷容器

backup_file="volume_backup_$(date +%Y%m%d_%H%M%S).tar.gz"
docker run --rm --user $(id -u):$(id -g) -v vscode_extension:/data -v $(pwd):/backup alpine tar czf /backup/$backup_file -C /data .
#docker run --rm --user $(id -u):$(id -g) -v vscode_extension:/data -v $(pwd):/backup alpine sh -c "cd /data && tar xzf /backup/$backup_file"
./cli.sh
cd ~/.vscode-server && tar xzf /app/$backup_file

EOF
