FROM node as builder

COPY package.json ./

RUN mkdir /react-ui && cd ./react-ui && npm install && cd ../

WORKDIR /react-ui

COPY . .

RUN npm run build

FROM nginx:alpine

COPY ./.nginx/nginx.conf  /etc/nginx/nginx.conf

RUN rm -rf /usr/share/nginx/html/*

COPY --from=builder /react-ui/build /usr/share/nginx/html

EXPOSE 3000 80 3005 3009

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]

# build -t react-ui .
# docker run -d --name reactui -p 80:80 react-ui