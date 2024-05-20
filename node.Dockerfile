# 选择一个 node 镜像
FROM node:14-alpine

# 设置为工作目录，以下 RUN/CMD 命令都是在这个目录下执行
WORKDIR /code

# 把宿主机的代码添加到镜像中
ADD . /code

# 安装依赖
RUN yarn

# 指定接口
EXPOSE 3000

# 启动 Node Server
CMD npm start
