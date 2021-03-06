FROM alpine:3.7

ARG GIT_COMMIT
ENV GIT_COMMIT ${GIT_COMMIT}

RUN apk --update upgrade && apk add ca-certificates && update-ca-certificates
COPY ./kubeturbo.linux /bin/kubeturbo 

ENTRYPOINT ["/bin/kubeturbo"]



