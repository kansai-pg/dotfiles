# dotfiles 

自分用環境セット  
.bashrcへ以下の記述が必要  
dockerが入っていればmacの.zshrcでも動きます。
github codespacesでも動きました。

``` bash
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```

