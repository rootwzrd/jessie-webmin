# debian jessie with webmin

FROM debian:jessie
MAINTAINER youske miyakoshi <youske@gmail.com>

ENV WEBMIN_VERSION=1.79.1 \
    BASE_PACKAGE="wget expect perl python openssl" \
    PERL_LIBPACKAGE="libnet-ssleay-perl libauthen-pam-perl libpam-runtime libio-pty-perl" \
    LANGUAGE=ja_JP.UTF-8 \
    WEBMIN_VERSION=1.791 \
    WEBMIN_BASE=/webmin \
    ADMIN_NAME=admin \
    ADMIN_PASSWORD=admin

RUN apt-get update && apt-get upgrade && apt-get install -y ${BASE_PACKAGE} ${PERL_LIBPACKAGE}
RUN cd /root && wget -q http://prdownloads.sourceforge.net/webadmin/webmin-1.791.tar.gz -O- | tar zx
COPY setup_expect /root/webmin-${WEBMIN_VERSION}

RUN mkdir ${WEBMIN_BASE} && cd /root/webmin-${WEBMIN_VERSION} && ./setup_expect && date

EXPOSE 8088
CMD ["bash"]
