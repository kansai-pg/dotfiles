#https://asukiaaa.blogspot.com/2020/07/docker-python-pip-install-without-rebuilding.html
#https://rheb.hatenablog.com/entry/podman3-rootless-docker-compose

alias pythontest='docker run --rm -it \
    -v pip-lib:/pip-lib \
    -v pip-cache:/root/.cache/pip \
    -v "$PWD:/$PWD:z" \
    -w "/$PWD" \
    -e  PYTHONUSERBASE=/pip-lib \
    kansaipg/docker-coc.nvim:python-jedi python3'

alias piptest='docker run --rm -it \
    -v pip-lib:/pip-lib \
    -v pip-cache:/root/.cache/pip \
    -v "$PWD:/$PWD:z" \
    -w "/$PWD" \
    -e  PYTHONUSERBASE=/pip-lib \
     kansaipg/docker-coc.nvim:python-jedi pip'

alias vimtest='docker run --rm -it \
    -v pip-lib:/pip-lib \
    -v pip-cache:/root/.cache/pip \
    -v "$PWD:/$PWD:z" \
    -w "/$PWD" \
    -e  PYTHONUSERBASE=/pip-lib \
    -v ~/.docker-vimrc:/root/.vimrc \
    kansaipg/docker-coc.nvim:python-jedi vim'
