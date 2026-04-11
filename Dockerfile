FROM nginx:alpine

run rm -rf /usr/share/nginx/html/*

copy dist/ /usr/share/nginx/html/

expose 80

CMD ["nginx","-g","daemon off"]




