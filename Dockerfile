# FROM python:3.7.6-stretch
# # FROM arm64v8/python:3.7
FROM scakkia/docker-ansible:arm64

# RUN pip3 install pip --upgrade
# RUN pip3 install ansible

# RUN apt-get update -y && \
#     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
#     sshpass



COPY ./hosts /etc/ansible/hosts

WORKDIR /work
COPY ./ ./