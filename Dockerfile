FROM kansaipg/docker-coc.nvim

RUN apt-get update && apt-get -y install zlib1g-dev libssl-dev libreadline-dev \
libsqlite3-dev libbz2-dev libncurses5-dev libgdbm-dev liblzma-dev \
tk-dev

RUN curl -OL https://www.python.org/ftp/python/3.10.6/Python-3.10.6.tar.xz && tar xvf Python-3.10.6.tar.xz

WORKDIR /Python-3.10.6

RUN ./configure && make -j$(grep '^processor' /proc/cpuinfo | wc -l) && make install

RUN pip3 install jedi-language-server

COPY .vimrc /root/.vimrc

COPY coc-settings.json /root/.vim/coc-settings.json

WORKDIR /
