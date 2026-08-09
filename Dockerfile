FROM docker.io/ubuntu:26.04

LABEL org.opencontainers.image.source="https://github.com/leberkaslabs/docker-image-latex"

# Install latex and its dependencies
ENV TZ="Europe/Berlin"
ARG DEBIAN_FRONTEND="noninteractive"
RUN apt-get -qy update \
    && apt-get install -qy tzdata \
    && ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo $TZ > /etc/timezone \
    && apt-get -qy install --no-install-recommends \
        biber \
        fonts-font-awesome \
        python3 \
        python3-pygments \
        texlive-bibtex-extra \
        texlive-fonts-extra \
        texlive-fonts-recommended \
        texlive-lang-german \
        texlive-latex-extra \
        texlive-latex-recommended \
        texlive-luatex \
        texlive-plain-generic \
        wget \
        xz-utils \
    && apt-get -qy clean \
    && rm -rf /var/lib/apt/lists/* /usr/share/doc /usr/share/man

CMD ["lualatex", "--version"]
