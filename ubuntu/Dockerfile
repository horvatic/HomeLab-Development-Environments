FROM ubuntu:22.04

RUN echo 'PATH=$PATH:/usr/local/go/bin' >> /etc/profile
RUN apt update && apt install openssh-server build-essential sudo software-properties-common wget git dotnet-sdk-6.0 docker -y

RUN apt install ca-certificates curl gnupg lsb-release -y
RUN mkdir -p /etc/apt/keyrings
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN apt update && apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

RUN wget https://go.dev/dl/go1.19.4.linux-amd64.tar.gz

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 homelab
RUN tar -xvf go1.19.4.linux-amd64.tar.gz -C /usr/local

RUN echo 'homelab:homelab' | chpasswd

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
