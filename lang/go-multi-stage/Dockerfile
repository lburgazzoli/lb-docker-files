
####################
# BUILD
####################

FROM golang:1.10 as builder
ADD ./src /build
RUN cd /build \
    && CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

####################
# RUNTIME
####################

FROM alpine:3.7  
RUN apk --no-cache add ca-certificates \
    && addgroup -S app \
    && adduser -S -g app app

WORKDIR /home/app
COPY --from=builder /build/app .

RUN chown -R app:app ./app

ENTRYPOINT [ "./app" ]
