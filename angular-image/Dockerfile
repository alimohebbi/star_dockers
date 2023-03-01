FROM node:10
RUN git config --global http.sslverify "false"
RUN git clone https://star-rep.inf.usi.ch/Mohebbi/starlab-ui.git
WORKDIR /starlab-ui
RUN npm install -g @angular/cli@9.1.7
RUN npm install 
ENTRYPOINT git pull https://star-rep.inf.usi.ch/Mohebbi/starlab-ui.git && ng build --prod 

