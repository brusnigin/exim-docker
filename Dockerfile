FROM centos:centos7

ARG MYSQL_SERVERS 
COPY exim.conf /etc/exim/
COPY entrypoint.sh /bin
RUN sed -i 's@#MYSQL_SERVERS@'"$MYSQL_SERVERS"'@g' /etc/exim/exim.conf 
RUN curl -O http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm
RUN rpm -ivh epel-release-7-8.noarch.rpm
RUN yum install strace vim -y 
RUN yum install exim-mysql.x86_64 vim -y
RUN env
VOLUME /run /tmp
VOLUME /sys/fs/cgroup /sys/fs/cgroup
EXPOSE 25 587 465
#CMD ["/usr/sbin/exim", "-bdf", "-v", "-q30m"]
ENTRYPOINT /bin/entrypoint.sh
