# Sử dụng Node.js làm base image
FROM node:14

# Tạo thư mục làm việc trong container
WORKDIR /usr/src/app

# Sao chép các tệp vào thư mục làm việc
COPY package*.json ./
RUN npm install
COPY . .

# Expose cổng mà ứng dụng sẽ chạy
EXPOSE 3000

# Lệnh khởi động ứng dụng
CMD ["node", "app.js"]
