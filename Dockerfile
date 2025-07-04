FROM jenkins/jenkins:lts

USER root

# Install docker (optional: only if you want Jenkins to control Docker inside)
RUN apt-get update && apt-get install -y docker.io

# Give Jenkins user sudo access (optional)
RUN apt-get install -y sudo && echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins