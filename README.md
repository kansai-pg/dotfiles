# dotfiles 

自分用環境セット  
.bashrcへ以下の記述が必要  
※dockerが入っていればmacの.zshrcでも動きます

``` bash
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```

