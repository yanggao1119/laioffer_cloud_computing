FROM ubuntu:18.04

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install python-pip python-dev default-libmysqlclient-dev
RUN pip install awscli \
	boto3 \
	werkzeug \
	flask_session \
	mysqlclient
RUN mkdir -p /tmp/upload_tmp

ADD . ./

CMD ["/bin/sh", "run.sh"]
