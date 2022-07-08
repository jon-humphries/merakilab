FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
  apt-get install -y gcc python-dev libkrb5-dev && \
  apt-get install python3-pip -y && \
  apt-get install git -y && \
  pip3 install --upgrade pip && \
  pip3 install --upgrade virtualenv && \
  pip3 install pywinrm[kerberos] && \
  pip3 install pwgen && \
  apt install krb5-user -y && \
  pip3 install pywinrm && \
  pip3 install ansible && \
  ansible-galaxy collection install cisco.meraki