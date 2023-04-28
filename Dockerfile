# FROM python:3.7.6-stretch
FROM python:3.9

RUN pip install pip --upgrade
RUN pip install ansible

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass


COPY ./hosts /etc/hosts
COPY ./ansible/hosts /etc/ansible/hosts
COPY ./ansible/ansible.cfg /etc/ansible/ansible.cfg

WORKDIR /work
COPY ./ ./