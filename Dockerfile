FROM ubuntu:latest
MAINTAINER Anuj Gupta "anuj6.gupta@aricent.com"
RUN apt-get install software-properties-common
RUN apt-add-repository universe
RUN apt-get update && apt-get -y install python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
#ENV http_proxy ""
#ENV https_proxy ""
ENTRYPOINT ["python"]
CMD ["system-tools.py"]
