


server {
	listen 80;
	listen [::]:80;
	access_log  /var/log/nginx/star.log;

	#server_name www.star-lab.ddns.net star-lab.ddns.net http://star-lab.ddns.net;
	server_name localhost;

    location /media {
            alias /home/ali/PycharmProjects/StarLabServer/StarLabServer/media;
    }
	
    location /static {
            alias /home/ali/PycharmProjects/StarLabServer/static;
    }

    location ~ ^/(api|admin) {
        proxy_pass http://127.0.0.1:8000;
        proxy_set_header Host $host;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    }

	location / {
	root /home/ali/Desktop/ang-test/personal-page/dist/personal-page;
	index index.html;

	try_files $uri $uri/ /index.html;


	}
}

