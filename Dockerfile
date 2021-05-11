FROM python:3.8

WORKDIR /workspace

COPY requirements.txt /workspace/requirements.txt 

RUN pip install -r requirements.txt && \ 
    mkdir src

COPY main.py /workspace/src

ENTRYPOINT ["python","src/main.py"]
