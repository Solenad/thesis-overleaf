FROM sharelatex/sharelatex:5.0

RUN apt-get update && apt-get install -y \
    python3-pygments \
    && rm -rf /var/lib/apt/lists/*

RUN tlmgr update --self && \
    tlmgr install \
    pdfpages \
    apacite \
    amsmath \
    amsfonts \
    booktabs \
    graphics \
    tools \
    url \
    eso-pic \
    everyshi
