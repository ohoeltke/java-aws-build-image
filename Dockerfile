
FROM maven:3-jdk-10

RUN apt-get update -y && \
    apt-get install -y python python-pip docker-ce&& \
    pip install awscli --ignore-installed six && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*