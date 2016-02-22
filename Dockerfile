# Linux OS
FROM centos:centos7

# Maintainer
MAINTAINER zorino <maximilien1er@gmail.com>

# Install virtuoso dependencies
RUN yum update -y && \
    yum install -y git autoconf automake libtool flex bison \
    gperf gawk m4 make openssl openssl-devel net-tools \
 && yum clean all \
 && mkdir /mnt/graphs

# Create volume for graph data
VOLUME /mnt/graphs
WORKDIR /mnt/graphs
ENV GRAPH_HOME /mnt/graphs

# Install virtuoso + utils
RUN git clone https://github.com/openlink/virtuoso-opensource.git \
    -b stable/7 /opt/virtuoso-opensource
RUN cd /opt/virtuoso-opensource && bash autogen.sh \
 && ./configure --prefix=/opt/virtuoso-build --enable-fct-vad \
 && make && make install

RUN chmod -R 755 /opt/virtuoso-build/bin/
ENV PATH /opt/virtuoso-build/bin:$PATH
COPY virtuoso.ini /mnt/graphs/virtuoso.ini

# Exec on start
ENTRYPOINT ["virtuoso-t", "+foreground", "+configfile", "virtuoso.ini"]

# Expose Default Port
EXPOSE 9000
