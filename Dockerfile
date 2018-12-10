FROM golang:alpine as build

WORKDIR /build

RUN true \
	&& apk --no-cache add \
		git

RUN true \
	&& go get -u github.com/opendevsecops/go-launcher

# ---

FROM alpine:latest

WORKDIR /run

COPY --from=build /go/bin/go-launcher /bin/launcher

WORKDIR /session

ENTRYPOINT ["/bin/launcher"]
