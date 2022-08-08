FROM python

COPY --from=node /usr/local/bin/node /usr/local/bin/

COPY --from=node /usr/local/lib/node_modules/ /usr/local/lib/node_modules/

RUN ln -s /usr/local/bin/node /usr/local/bin/nodejs \
    && ln -s /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm \
    && ln -s /usr/local/lib/node_modules/npm/bin/npx-cli.js /usr/local/bin/npx

RUN apt-get update

RUN pip3 install jedi-language-server

RUN git clone https://github.com/vim/vim.git 

WORKDIR /vim/src

RUN make && make install

RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

COPY .vimrc /root/.vimrc

RUN vim -c PlugInstall -c q -c q

#RUN curl -fsSL https://download.docker.com/linux/static/stable/aarch64/docker-20.10.17.tgz \
#      | tar -xzC /usr/local/bin --strip=1 docker/docker

COPY coc-settings.json /root/.vim/coc-settings.json

WORKDIR /
