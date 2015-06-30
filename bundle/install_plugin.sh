#!/bin/bash
plugin_urls=(
git://github.com/tpope/vim-surround.git  
git://github.com/jiangmiao/auto-pairs.git 
https://github.com/vim-scripts/cscope.vim.git 
https://github.com/kien/ctrlp.vim.git 
https://github.com/vim-scripts/EasyGrep.git 
https://github.com/vim-scripts/a.vim.git 
https://github.com/vim-scripts/OmniCppComplete.git 
https://github.com/scrooloose/nerdtree.git 
https://github.com/ervandew/supertab.git 
https://github.com/vim-scripts/taglist.vim.git 
https://github.com/bling/vim-airline.git 
https://github.com/gerw/vim-latex-suite.git 
https://github.com/davidhalter/jedi-vim.git
)

for((i=0;i<${#plugin_urls[@]};i=$(($i+1))))
{
    git_url=${plugin_urls[$i]}
    plugin_name=${git_url##*/}
    plugin_name=${plugin_name%.git}
    [ -d $plugin_name ] && continue
    git clone $git_url || exit 1
}
