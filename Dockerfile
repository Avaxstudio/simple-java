FROM jenkins/jenkins:lts

USER root

# Instalacija Docker CLI
RUN apt-get update && \
    apt-get install -y --no-install-recommends docker.io && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Dodavanje Jenkins user-a u docker grupu
RUN usermod -aG docker jenkins

USER jenkins

