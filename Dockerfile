FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Build the application
# RUN npm run build

# Command will be provided by smithery.yaml
#CMD ["node", "dist/index.js"]

# 定义环境变量，默认为生产环境
ENV NODE_ENV production

# 定义容器启动时执行的命令
CMD [ "node", "server.js" ]