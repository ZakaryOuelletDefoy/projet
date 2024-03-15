$ModLoad imudp
$UDPServerRun 514

module(load="imtcp")
input(type="imtcp" port="514")

# Envoi des logs vers Neo
template(name="ToNeo" type="remote" protocol="tcp" target="10.0.0.2" port="514")

# Règles d'envoi des logs
if $fromhost == 'localhost' then
  action(type="ToNeo" template="ToNeo")
else
  discard
endif

COPY rsyslog.sh /etc/rsyslog.conf
RUN sed -i 's/old_value/new_value/g' /etc/rsyslog.conf