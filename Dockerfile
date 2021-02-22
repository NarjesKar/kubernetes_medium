FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3-pip
RUN pip3 install flask
COPY api.py .
RUN chmod 777 api.py
CMD python3 api.py
