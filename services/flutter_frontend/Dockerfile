FROM ghcr.io/cirruslabs/flutter:stable

RUN apt-get update && apt-get install -y --no-install-recommends cmake ninja-build build-essential clang pkg-config libgtk-3-dev

ENV BUILD_TARGET=linux

WORKDIR /app

RUN flutter create --platforms=linux,windows,android,ios .

COPY scripts/ /build_scripts/

COPY . .

RUN flutter pub get

CMD ["/bin/bash", "-c", "/build_scripts/auto_build.sh $BUILD_TARGET"]
