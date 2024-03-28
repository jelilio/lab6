FROM ubuntu

RUN apt update
RUN apt install -y python3 pip

COPY requirements.txt /opt/requirements.txt
RUN pip install -r /opt/requirements.txt

COPY main.py /opt/main.py

COPY templates/ /opt/templates

ENTRYPOINT FLASK_APP=/opt/main.py flask run --host=0.0.0.0