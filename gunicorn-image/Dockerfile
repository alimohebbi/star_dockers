FROM python:3.5
EXPOSE 8000
RUN git clone https://github.com/alimohebbi/starlab-server.git
WORKDIR /starlab-server/
COPY requirements.txt .
COPY secret.py ./production_setting/
RUN pip install -r requirements.txt
ENTRYPOINT git pull https://github.com/alimohebbi/starlab-server.git && gunicorn -b 0.0.0.0:8000 --workers 4 --worker-class gevent StarLabServer.wsgi
