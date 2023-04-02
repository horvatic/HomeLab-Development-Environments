from debian:stable

# Update
RUN apt-get update -y && apt-get upgrade -y

# UI
RUN apt-get install xpra openbox obconf tint2 -y

# System
RUN apt-get install sudo xterm xfce4-terminal curl gpg -y

# Extras
RUN apt-get install firefox-esr -y

RUN useradd -ms /bin/bash homelab
RUN usermod -aG sudo homelab
RUN echo "homelab:homelab" | chpasswd

WORKDIR /home/homelab

RUN curl -o code.deb -L https://update.code.visualstudio.com/1.77.0/linux-deb-x64/stable
RUN apt install ./code.deb -y
RUN rm -rf code.deb

COPY run.sh run.sh
RUN chmod +x run.sh

EXPOSE 8080

USER homelab

CMD ["./run.sh"]