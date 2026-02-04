FROM sharelatex/sharelatex:5.0

ENV PATH="/usr/local/texlive/2023/bin/x86_64-linux:${PATH}"

RUN apt-get update && apt-get install -y \
    python3-pygments \
    && rm -rf /var/lib/apt/lists/*

RUN tlmgr option repository https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2023/tlnet-final/

RUN tlmgr install \
    scheme-medium \
    hyphen-polish \
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
