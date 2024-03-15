# Utiliser l'image de base Ubuntu
FROM ubuntu:latest

# Installation des logiciels requis
RUN apt-get update -y && \
apt-get install -y apt-utils iproute2 net-tools \
iputils-ping rsyslog ufw && apt-get clean

# Copie des fichiers vers le conteneur
COPY --chown=root:root ./neo.sh /neo.sh
COPY --chown=root:root ./rsyslog.conf /etc/rsyslog.conf

# Attribution des permissions appropriées
RUN chmod +x /neo.sh

# Ajoutez des configurations supplémentaires au fichier rsyslog.con
#RUN sed -i 's/old_value/new_value/g' /etc/rsyslog.conf

# Point d'entrée pour exécuter le script neo.sh
ENTRYPOINT ["/bin/sh", "/neo.sh"]