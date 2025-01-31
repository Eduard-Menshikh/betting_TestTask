FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y openssh-server sudo && \
    apt-get clean

RUN useradd -m ansible && \
    echo 'ansible:P@ssw0rd' | chpasswd && \
    usermod -aG sudo ansible

RUN mkdir /var/run/sshd

RUN mkdir -p /var/www/html/images && chmod 777 /var/www/html/images

CMD ["/usr/sbin/sshd", "-D"]