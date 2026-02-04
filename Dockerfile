FROM sharelatex/sharelatex:5.0

RUN apt-get update && apt-get install -y \
    python3-pygments \
    && rm -rf /var/lib/apt/lists/*

RUN tlmgr update --self && \
    tlmgr option docfiles 0 && \
    tlmgr option srcfiles 0 && \
    tlmgr install --force scheme-full
