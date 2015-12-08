FROM registry.access.redhat.com/rhel7
#FROM registry.access.redhat.com/openshift3/python-33-rhel7
RUN sleep 5
RUN cat /etc/resolv.conf
RUN cat /etc/yum.repos.d/*
#RUN curl -v docker-registry.default.svc.cluster.local:5000
EXPOSE 8000
USER 0
RUN sleep 10000
#CMD  python -m SimpleHTTPServer 8000
