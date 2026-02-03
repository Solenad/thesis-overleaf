FROM overleaf/overleaf:latest

RUN apt-get update && apt-get install -y \
    texlive-full \
    python3-pygments \
    && rm -rf /var/lib/apt/lists/*

