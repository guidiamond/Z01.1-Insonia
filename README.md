[![](icon-elementos.png)](https://github.com/Insper/Z01.1/wiki)

> Desenvolvendo um computador operacional do ZERO!

Material disponível na [wiki](https://github.com/Insper/Z01.1/wiki)

## Clonando

``` bash
$ git clone https://github.com/Insper/Z01.1
$ cd Z01.1
$ git submodule update --init --recursive
$ git submodule foreach 'git stash; git checkout master; git pull'
```
