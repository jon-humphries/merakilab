# Docker & Ansible Build Instructions

![Docker_Ansible](image1.png)

Create a new directory and then a new Dockerfile.

Within the Dockerfile create the following build instructions and save it.

`FROM ubuntu:20.04 `

`ENV DEBIAN_FRONTEND=noninteractive`

`RUN apt-get update && \`

  `apt-get install -y gcc python-dev libkrb5-dev && \`
  
  `apt-get install python3-pip -y && \`
  
  `pip3 install --upgrade pip && \`
  
  `pip3 install --upgrade virtualenv && \`
  
  `pip3 install pywinrm[kerberos] && \`
  
  `apt install krb5-user -y && \`
  
  `pip3 install pywinrm && \`
  
  `pip3 install ansible`

Navigate to directory containing the saved Dockerfile.

Run the following command to build the container:

`docker build -t ansible:latest .`

It will run through a bunch of steps....

![Docker Build](image2.png)

Next run the container with the following command:

`docker run -it ansible`

This should create a new running docker container and enter you into root. Please note that this will not create a persistent container nor any persistent volumes. It is for one time execution only.

