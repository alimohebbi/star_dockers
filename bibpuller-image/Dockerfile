FROM node
VOLUME media/
WORKDIR media/
#RUN apk add --no-cache git
#RUN apt-get update
#RUN apt-get install git
COPY puller.sh .
CMD git clone http://star-rep.inf.usi.ch/root/bibliography.git & ./puller.sh 
