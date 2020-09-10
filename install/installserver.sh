#!/bin/sh
# Disable SELinux
setenforce 0

# Download Ambari Repository
wget -nv http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.6.2.0/ambari.repo -O /etc/yum.repos.d/ambari.repo

# Install java-1.8
yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel

# Install ambari-server
yum -y install ambari-server

# bootstrap ambari-server
ambari-server setup -s --java-home=/usr/lib/jvm/jre/

# disable ssl checks
sed -i 's/verify=platform_default/verify=disable/' /etc/python/cert-verification.cfg || echo "could not disable ssl checks"

# start ambari-server
ambari-server start

sh /vagrant/install/installagent.sh
