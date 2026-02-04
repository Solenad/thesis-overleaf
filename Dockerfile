FROM sharelatex/sharelatex:5.0

RUN apt-get update && apt-get install -y \
    texlive-latex-extra \
    texlive-fonts-extra \
    texlive-bibtex-extra \
    texlive-science \
    texlive-lang-all \
    python3-pygments \
    && rm -rf /var/lib/apt/lists/*
