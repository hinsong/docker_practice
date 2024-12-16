FROM node:20-slim
WORKDIR /app
COPY package*.json .
# RUN npm install
RUN ["npm", "ci"]

ENV NODE_ENV=production

COPY . .
EXPOSE 8080

# 코드 실행 전 유저 권한 낮추기
USER node
CMD ["node", "server.js"]