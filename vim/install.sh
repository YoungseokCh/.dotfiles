mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/whonore/Coqtail.git ~/.vim/bundle/Coqtail
vim +Helptags +q
git clone https://github.com/jnurmine/Zenburn.git ~/.vim/bundle/Zemburn
git submodule add git@github.com:dracula/vim.git ~/.vim/bundle/dracula
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
git clone git://github.com/wakatime/vim-wakatime.git ~/.vim/bundle/vim-wakatime
