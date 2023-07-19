#! /bin/sh
#
###
# Author : gurvan.dev
###

BASEDIR=$(dirname "$0")/..

echo "Installing dotfiles..."
mkdir -p $HOME/.config

# --------
# arg 1 : Name of config
# arg 2 : Origin path
# arg 3 : Destination path
# --------

install_config () 
{
  if [ -e $3 ]
  then 
    echo "Config for $1 exists."
    read -p "Do you want to replace it? [Y/n]" yn
    case $yn in
        [Yy]* ) cp -rv $2 $3 
    esac
  else
    cp -rv $2 $3
  fi
}

for config in $(ls -A $BASEDIR/config);
do
  install_config $config $BASEDIR/config/$config $HOME/.config/$config
done

for homeconfig in $(ls -A $BASEDIR/home);
do
  install_config $homeconfig $BASEDIR/home/$homeconfig $HOME/$homeconfig
done

echo "Done."
