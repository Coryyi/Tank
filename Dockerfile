nginx:1.20.0

ADD index.html /usr/share/nginx/html
ADD js /usr/share/nginx/html
ADD css /usr/share/nginx/html
ADD audio /usr/share/nginx/html
ADD images /usr/share/nginx/html

WORKDIR /usr/share/nginx/html
CMD ["nginx","-g","daemon off;"]
