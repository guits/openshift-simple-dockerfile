FROM docker.io/guits/openshift-debug

RUN sleep 5
RUN cat /etc/resolv.conf
RUN cat /etc/yum.repos.d/*
ADD /lib64/libdl.so.2 /lib64/libdl.so.2
ADD /lib64/libc.so.6 /lib64/libc.so.6
ADD /lib64/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2
ADD /usr/sbin/ip /usr/sbin/ip
#RUN curl -v docker-registry.default.svc.cluster.local:5000
EXPOSE 8000
USER 0
RUN sleep 10000
#CMD  python -m SimpleHTTPServer 8000
