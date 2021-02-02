FROM python:3.5
EXPOSE 8000
RUN git clone http://star-rep.inf.usi.ch/Mohebbi/starlab-server.git
WORKDIR /starlab-server/
COPY requirements.txt .
COPY secret.py ./production_setting/
RUN pip install -r requirements.txt
ENTRYPOINT git pull http://star-rep.inf.usi.ch/Mohebbi/starlab-server.git && gunicorn -b 0.0.0.0:8000 --workers 4 --worker-class gevent StarLabServer.wsgi
