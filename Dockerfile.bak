
# 使用官方Node.js镜像作为基础镜像
FROM node:20-alpine3.20

# 设置工作目录
WORKDIR /usr/src/app

# 复制当前目录内容到工作目录中
COPY . .

# 安装项目依赖
RUN npm install

# 暴露端口，默认是3000，如果你的应用使用不同的端口，请相应修改
EXPOSE 3000

# 定义环境变量，默认为生产环境
ENV NODE_ENV production

# 定义容器启动时执行的命令
CMD [ "node", "server.js" ]