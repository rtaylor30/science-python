FROM ubuntu:16.04

RUN apt update \
    && apt install -q -y libgtk2.0-dev python3 python3-pip \
    && ls -s /usr/bin/python3 /usr/bin/python \
    && apt install -q -y python3-dev g++ \
    && pip3 install --upgrade pip \
    && pip3 install numpy scipy jupyter pandas urllib3 ostruct scikit-image scikit-learn opencv-python tensorflow keras imageio \
    && apt remove --purge -q -y python3-dev g++

EXPOSE 8888

WORKDIR /app

CMD [ "jupyter", "notebook" ]
