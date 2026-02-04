FROM sharelatex/sharelatex:5.0

RUN apt-get update && apt-get install -y \
    python3-pygments \
    && rm -rf /var/lib/apt/lists/*

RUN tlmgr update --self && \
    tlmgr option docfiles 0 && \
    tlmgr option srcfiles 0 && \
    tlmgr install scheme-full

RUN tlmgr remove \
    collection-langarabic \
    collection-langchinese \
    collection-langcjk \
    collection-langcyrillic \
    collection-langczechslovak \
    collection-langeuropean \
    collection-langfrench \
    collection-langgerman \
    collection-langgreek \
    collection-langitalian \
    collection-langjapanese \
    collection-langkorean \
    collection-langother \
    collection-langpolish \
    collection-langportuguese \
    collection-langspanish
