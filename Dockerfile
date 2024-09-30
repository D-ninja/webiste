FROM nginx:latest

RUN apt-get -y update  && apt-get install -y bash

WORKDIR /usr/share/nginx/html

COPY . .

EXPOSE 80

CMD ["nginx","-g","daemon off;"]
