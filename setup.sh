adduser artifactory
firewall-cmd --permanent --add-port=8081/tcp
firewall-cmd --reload