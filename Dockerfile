FROM centos:centos7

MAINTAINER Jan Pazdziora
RUN curl -O http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm
RUN rpm -ivh epel-release-7-8.noarch.rpm
RUN yum install mysql-server.x86_64 mysql-utilities.noarch exim-mysql.x86_64 -y
RUN yum install strace -y 
VOLUME /run /tmp
VOLUME /sys/fs/cgroup /sys/fs/cgroup
ENTRYPOINT /bin/bash
