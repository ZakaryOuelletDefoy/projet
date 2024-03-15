#Configuration pour écouter les logs entrant
module(load="imtcp") # needs to be done just once
input(type="imtcp" port="514")

module(load="imudp") # needs to be done just once
input(type="imudp" port="514")

$template RemoteLogs,"/var/log/%HOSTNAME%/%PROGRAMNAME%.log"
*.* ?RemoteLogs
& ~
