FROM python:3.11.0a2-bullseye

RUN apt update
RUN apt install awscli -y
RUN python -m pip install boto3

RUN mkdir /app

COPY delete_snap_older.py /app

CMD python /app/delete_snap_older.py $ARGS
