FROM fpco/stack-build:latest
RUN apt-get update && apt-get install -y build-essential libffi-dev libgmp-dev pkgconf
RUN stack install --system-ghc idris
RUN mkdir /work
WORKDIR /work
CMD ["idris"]

