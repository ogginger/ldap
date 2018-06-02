#ldap Dockerfile: Setup ldap server
from ubuntu:16.04


#Install Software
#slapd is not listed here because it asks for admin password upon installation.
run apt update \
	&& apt-get install -y \
	ldap-utils \
	expect \
	vim 

#Add configuration files.
#./config contains an expect script which installs slapd.
add ./config/ /home/config/

entrypoint /home/config/setup && sh

