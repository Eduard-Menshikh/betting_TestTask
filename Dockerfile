FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y openssh-server sudo && \
    apt-get clean

RUN useradd -m ansible && \
    echo 'ansible:P@ssw0rd' | chpasswd && \
    usermod -aG sudo ansible

RUN mkdir /var/run/sshd

EXPOSE 22