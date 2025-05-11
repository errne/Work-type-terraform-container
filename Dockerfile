FROM registry.access.redhat.com/ubi8/ubi:latest

RUN yum -y update && \
    yum -y install yum-utils unzip && \
    yum clean all

RUN yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
RUN yum -y install terraform python3 python3-pip && \
    yum clean all

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm awscliv2.zip && \
    rm -rf ./aws

RUN aws --version

RUN echo "alias ll='ls -l --color=auto'" >> /root/.bashrc && \
    echo "alias tailf='tail -f'" >> /root/.bashrc

WORKDIR /home
CMD ["bash"]