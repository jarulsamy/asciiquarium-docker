FROM perl:5 as BUILDER

RUN apt-get update && apt-get install -y \
  git \
  gcc \
  libncurses5-dev \
  libncursesw5-dev && \
  rm -rf /var/lib/apt/lists/* && \
  git clone https://github.com/cmatsuoka/asciiquarium.git /src && \
  (echo y; echo o conf prerequisites_policy follow; echo o conf commit) | cpan && \
  cpan Term::Animation

FROM perl:5-slim

LABEL name="asciiquarium"
LABEL maintainer="jarulsamy"
LABEL version="1.0.0"

COPY --from=BUILDER /src /src

WORKDIR /src

CMD ["perl", "/src/asciiquarium"]
