FROM		fauria/vsftpd
MAINTAINER	Phirov Zank <phirov@163.com>

COPY		run-vsftpd.sh /usr/sbin/

RUN		chmod +x /usr/sbin/run-vsftpd.sh

VOLUME		/home/vsftpd
VOLUME		/var/log/vsftpd

EXPOSE		20 21

CMD		[ "/usr/sbin/run-vsftpd.sh" ]
