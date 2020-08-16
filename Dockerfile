FROM ubuntu:18.04
RUN apt-get -qq update
RUN apt-get -qq install -y python3 python3-pip \
    build-essential bash locales
COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["python3","-m","tgfilestream"]
