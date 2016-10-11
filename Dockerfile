FROM centos:centos7

MAINTAINER Jan Pazdziora

RUN yum install epel-release
RUN yum install mysql-server.x86_64 mysql-utilities.noarch mytop.noarch exim-mysql.x86_64 dovecot-mysql.x86_64 httpd.x86_64 php-devel.x86_64 -y
ENTRYPOINT /bin/bash
