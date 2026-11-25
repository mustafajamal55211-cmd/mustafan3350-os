FROM debian:trixie
RUN apt-get update && apt-get install -y live-build
WORKDIR /build
COPY . .
RUN lb config && lb build