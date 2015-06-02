#Create folders
mkdir ~/bin ~/lib

# Install anyenv
echo "Installing anyenv..."
git clone https://github.com/riywo/anyenv ~/.anyenv

#Installing environments
echo "Installing pyenv"
anyenv install pyenv
anyenv install plenv
anyenv install rbenv
anyenv install jenv
eval "$(anyenv init -)"

#Install pyenv-virtualenv
echo "Installing pyenv-virtualenv"
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.anyenv/envs/pyenv/plugins/pyenv-virtualenv

#Install Python 2.7.9
echo "Installing Python 2.7.9"
pyenv install 2.7.9
pyenv rehash
pyenv global 2.7.9 system

#Install Perl 5.21.11
echo "Installing Perl 5.21.11"
plenv install 5.21.11
plenv rehash
plenv global 5.21.11 system

#Install Ruby
echo "Installing Ruby 2.2.2"
rbenv install 2.2.2
rbenv rehash
rbenv global 2.2.2 system

#Install Gems
echo "Installing rubygems"
mkdir ~/src/rubygems
git clone git@github.com:rubygems/rubygems.git ~/src/rubygems
cd ~/src/rubygems
ruby setub.rb

#Install Java
echo "Installing Java"
wget -O ~/src/java.tar.gz http://javadl.sun.com/webapps/download/AutoDL?BundleId=106240
tar -C ~/bin -xvf java.tar.gz
jenv add 1.8

#Install powerline
echo "Installing Powerline and fonts"
pip install powerline-status
mkdir -p ~/src/powerline-fonts
git clone git@github.com:powerline/fonts.git ~/src/powerline-fonts
~/src/powerline-fonts/install.sh

#Install Pathogen
echo "Installing Powerline"
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#Install solarized theme for vim
echo "Installing solarized theme for vim"
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git

#Install tmux
echo "Installing tmux"
sudo apt-get -y install tmux

#Install Chuck Norris MTOD
echo "Installing Chuck Norris MTOD"
sudo apt-get -y install cowsay fortune

#Call make_links to create symlinks
echo "Creating Symlinks"
./make_links.sh
