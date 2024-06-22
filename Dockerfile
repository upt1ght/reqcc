FROM msoap/shell2http:latest as shell2http

FROM golang:alpine
COPY --from=shell2http /app/shell2http /shell2http
RUN go install github.com/vishen/go-chromecast@latest
ENTRYPOINT ["/shell2http"]
