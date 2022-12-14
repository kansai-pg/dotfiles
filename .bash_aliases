#https://asukiaaa.blogspot.com/2020/07/docker-python-pip-install-without-rebuilding.html
#https://rheb.hatenablog.com/entry/podman3-rootless-docker-compose

alias python-docker='docker run --rm -it \
    -v pip-lib:/pip-lib \
    -v pip-cache:/root/.cache/pip \
    -v "$PWD:/$PWD:z" \
    -w "/$PWD" \
    -e  PYTHONUSERBASE=/pip-lib \
    kansaipg/docker-coc.nvim:python-jedi-php python3'

alias pip-docker='docker run --rm -it \
    -v pip-lib:/pip-lib \
    -v pip-cache:/root/.cache/pip \
    -v "$PWD:/$PWD:z" \
    -w "/$PWD" \
    -e  PYTHONUSERBASE=/pip-lib \
     kansaipg/docker-coc.nvim:python-jedi-php pip'

alias vim-docker='docker run --rm -it \
    -v pip-lib:/pip-lib \
    -v pip-cache:/root/.cache/pip \
    -v "$PWD:/$PWD:z" \
    -w "/$PWD" \
    -e  PYTHONUSERBASE=/pip-lib \
    kansaipg/docker-coc.nvim:python-jedi-php vim'
