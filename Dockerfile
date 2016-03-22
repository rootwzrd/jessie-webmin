# debian jessie with webmin

FROM debian:jessie
MAINTAINER youske miyakoshi <youske@gmail.com>

ENV BASE_PACKAGE="bash gawk wget python" \
    PERL_PACKAGE="perl liblibio-pty-perl libnet-ssleay-perl libauthen-pam-perl apt-show-versions libapt-pkg-perl" \
    LANGUAGE=ja_JP.UTF-8 \
    WEBMIN_VERSION=1.791 \
    DOWNLOAD_URL=http://prdownloads.sourceforge.net/webadmin/webmin_%WM_REP%_all.deb \
    WEBMIN_BASE=/webmin

COPY debian-webmin.list /etc/apt/sources.list.d

#RUN apt-get update && apt-get upgrade && apt-get install -y wget

# webmin apt
#RUN cd /root && wget http://www.webmin.com/jcameron-key.asc && apt-key add jcameron-key.asc && apt-get update


#RUN apt-get -y install webmin

CMD ["bash"]
