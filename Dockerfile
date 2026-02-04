FROM sharelatex/sharelatex:5.0

RUN apt-get update && apt-get install -y \
    python3-pygments \
    && rm -rf /var/lib/apt/lists/*

RUN /usr/local/texlive/2023/bin/x86_64-linux/tlmgr update --self && \
    /usr/local/texlive/2023/bin/x86_64-linux/tlmgr install \
    scheme-basic \
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
