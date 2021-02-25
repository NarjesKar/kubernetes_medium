FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3-pip
RUN pip3 install flask requests
COPY api.py .
COPY test_api.py .
RUN chmod 777 api.py
RUN chmod 777 test_api.py
CMD python3 api.py
