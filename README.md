##### 初始化

```
下载所有配置文件
git clone https://github.com/Jhzarunq/vim.git ~

初始化Vundle包管理
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# 编辑.vimrc  .vim/plugins.vim

进入.vimrc
:PluginInstall
```



##### 安装依赖

1. 安装 `go`  ,  `python3.6`
2. `go env` 查看环境变量
3. 安装 `YOUCOMPLETEME` `tpope/vim-fugitive`
4. 设置 `GOPROXY` `GOBIN` 
5. 下载已编译好的 `YOUCOMPLETEME` 并移动至 `YOUCOMPLETEME` 目录
6. 安装 `vim-go`  `codota/TabNine`
7. 进入 `.vimrc` 执行 `GoInstallBinaries`



##### 安装 `snippets`

* `Vundle` 包安装 `SirVer/ultisnips` `honza/vim-snippets`

* 进入 `.vimrc` 执行 `PluginInstall`

* 编辑 `.vimrc`

  ```
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<c-b>"
  let g:UltiSnipsJumpBackwardTrigger="<c-z>"
  
  " If you want :UltiSnipsEdit to split your window.
  let g:UltiSnipsEditSplit="vertical"
  ```