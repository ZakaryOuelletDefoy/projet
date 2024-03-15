FROM debian:latest

RUN apt-get update -y && \
apt-get install -y \
rsyslog \
openssh-server \
apache2 \
fail2ban \
net-tools \
--reinstall systemd

FROM debian:latest

# Copiez le fichier de configuration sshd_config personnalisé
COPY sshd_config /etc/ssh/sshd_config

# Ajoutez des configurations supplémentaires a sshd_config
#RUN sed -i 's/old_value/new_value/g' /etc/ssh/sshd_config

# Copiez le fichier de configuration rsyslog.conf personnalisé
COPY sshd_config /etc/rsyslog.conf

# Ajoutez des configurations supplémentaires au fichier rsyslog.con
#RUN sed -i 's/old_value/new_value/g' /etc/rsyslog.conf

# Copiez le fichier de configuration apache2.conf personnalisé
COPY sshd_config /etc/apache2/apache2.conf

# Ajoutez des configurations supplémentaires au fichier apache2.conf
#RUN sed -i 's/old_value/new_value/g' /etc/apache2/apache2.conf

# Exposition du port 22 et 80
EXPOSE 22 80

# Désactiver firewalld
#RUN systemctl stop firewalld && systemctl disable firewalld

# Désactiver SELinux
#RUN sed -i 's/^SELINUX=.*/SELINUX=disabled/' /etc/selinux/config
