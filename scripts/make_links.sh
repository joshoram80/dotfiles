# Create Symlinks from .dotfiles folder

#.vimrc
echo "Linking .vimrc..."
rm ~/.vimrc
ln -s $HOME/.dotfiles/.vimrc $HOME/.vimrc

#.vim
echo "Linking .vim folder"
rm ~/.vim
ln -s $HOME/.dotfiles/vim $HOME/.vim

#.zshrc
echo "Linking .zshrc..."
rm ~/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

#.bashrc
echo "Linking .bashrc..."
rm ~/.oh-my-zsh
ln -s $HOME/.dotfiles/.bashrc $HOME/.bashrc

#.bash_profile
echo "Linking .bash_profile..."
rm ~/.bash_profile
ln -s $HOME/.dotfiles/.bash_profile $HOME/.bash_profile

#.bash_aliases
echo "Linking .bash_aliases..."
rm ~/.bash_aliases
ln -s $HOME/.dotfiles/.bash_aliases $HOME/.bash_aliases

#.screenrc
echo "Linking .screenrc..."
rm ~/.screenrc
ln -s $HOME/.dotfiles/.screenrc $HOME/.screenrc

#.tmux.conf
echo "Linking .tmux.conf..."
rm ~/.tmux.conf
ln -s $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf

#.rtorrent.rc
echo "Linking .rtorrent.rc..."
rm ~/.rtorrent.rc
ln -s $HOME/.dotfiles/.rtorrent.rc $HOME/.rtorrent.rc

##.rtorrent-ps.rc
echo "Linking .rtorrent-ps.rc..."
rm ~/.rtorrent.rc
ln -s $HOME/.dotfiles/.rtorrent-ps.rc $HOME/.rtorrent-ps.rc

#redshift.conf
echo "Linking redshift.conf...
rm ~/.config/redshift.conf
ln -s $HOME/.dotfiles/.config/redshift.conf $HOME/.config/redshift.conf


