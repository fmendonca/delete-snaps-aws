FROM alpine:3.14
RUN apk add --no-cache python3 py3-pip \
	&& pip3 install awscli \
	&& pip3 install boto3


RUN mkdir /app

COPY delete_snap_older.py /app
#bla
CMD python3 /app/delete_snap_older.py $ARGS

