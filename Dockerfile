FROM centos:centos7

MAINTAINER Jan Pazdziora
RUN curl http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm
RUN rpm -ivh epel-release-7-8.noarch.rpm
RUN yum install mysql-server.x86_64 mysql-utilities.noarch mytop.noarch exim-mysql.x86_64 dovecot-mysql.x86_64 httpd.x86_64 php-devel.x86_64 -y
ENTRYPOINT /bin/bash
