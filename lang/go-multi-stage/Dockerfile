
####################
# BUILD
####################

FROM golang:1.10 as builder
ADD ./src /build
RUN cd /build \
    && go get -d -v golang.org/x/net/html \
    && CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

####################
# RUNTIME
####################

FROM alpine:latest  
RUN mkdir /runtime \
    && apk --no-cache add ca-certificates
COPY --from=builder /build/app /runtime/app
EXPOSE 9090
ENTRYPOINT [ "/runtime/app" ]
