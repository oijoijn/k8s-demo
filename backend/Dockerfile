FROM golang:1.22-alpine AS build
WORKDIR /src
COPY . .
RUN go build -o /app .

FROM alpine:3.20
RUN addgroup -S app && adduser -S app -G app
USER app
COPY --from=build /app /app
EXPOSE 8080
ENV LISTEN_PORT=8080
CMD ["/app"]
