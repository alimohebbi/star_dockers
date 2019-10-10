FROM node:8
RUN git clone https://github.com/alimohebbi/starlab-ui.git
WORKDIR /starlab-ui
RUN npm install -g @angular/cli
RUN npm install 
ENTRYPOINT git pull https://github.com/alimohebbi/starlab-ui.git && ng build --prod 

