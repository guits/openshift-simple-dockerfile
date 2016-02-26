FROM docker.io/guits/openshift-debug

RUN sleep 5
RUN cat /etc/resolv.conf
RUN cat /etc/yum.repos.d/*
COPY ./debug/lib64/libdl.so.2 /lib64/libdl.so.2
COPY ./debug/lib64/libc.so.6 /lib64/libc.so.6
COPY ./debug/lib64/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2
COPY ./debug/lib64/libc.so.6 /lib64/libc.so.6
COPY ./debug/lib64/libcap.so.2 /lib64/libcap.so.2
COPY ./debug/lib64/libidn.so.11 /lib64/libidn.so.11
COPY ./debug/lib64/libattr.so.1 /lib64/libattr.so.1
COPY ./debug/lib64/libnsl.so.1 /lib64/libnsl.so.1

COPY ./debug/hostname /bin/hostname
COPY ./debug/ping /bin/ping
COPY ./debug/ip /usr/sbin/ip
#RUN curl -v docker-registry.default.svc.cluster.local:5000
EXPOSE 8000
USER 0
RUN sleep 10000
#CMD  python -m SimpleHTTPServer 8000
