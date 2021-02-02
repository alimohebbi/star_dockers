FROM node:10
RUN git clone http://star-rep.inf.usi.ch/Mohebbi/starlab-ui.git
WORKDIR /starlab-ui
RUN npm install -g @angular/cli
RUN npm install 
ENTRYPOINT git pull http://star-rep.inf.usi.ch/Mohebbi/starlab-ui.git && ng build --prod 

