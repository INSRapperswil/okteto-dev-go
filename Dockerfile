FROM okteto/golang:1.19

LABEL maintainer="julian.klaiber@ost.ch"

COPY .bashrc /root/.bashrc

CMD [ "bash" ]