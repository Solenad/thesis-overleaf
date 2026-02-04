FROM sharelatex/sharelatex:5.0

ENV PATH="/usr/local/texlive/2023/bin/x86_64-linux:${PATH}"

RUN apt-get update && apt-get install -y \
    python3-pygments \
    && rm -rf /var/lib/apt/lists/*

RUN tlmgr update --self && \
    tlmgr install \
    scheme-medium \
    pdfpages \
    apacite \
    amsmath \
    amsfonts \
    booktabs \
    graphics \
    tools \
    url \
    eso-pic \
    atbegshi \
    pdftexcmds \
    infwarerr \
    kvoptions \
    etoolbox \
    caption \
    geometry && \
    texhash
