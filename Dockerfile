FROM node:alpine
WORKDIR /app
COPY package.json .
RUN npm install
RUN npm install @reduxjs/toolkit
RUN npm install react-redux
RUN npm install react react-dom
RUN npm install --save react-router-dom
RUN npm install --save toastr
RUN npm install axios
COPY . .
CMD ["npm","start"]