FROM sharelatex/sharelatex:5.0

RUN apt-get update && apt-get install -y \
    texlive-latex-recommended \
    texlive-fonts-recommended \
    texlive-latex-extra \
    python3-pygments \
    && rm -rf /var/lib/apt/lists/*
