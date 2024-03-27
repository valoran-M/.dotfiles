#!/bin/sh

set -ex

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
  if [ -e ${3} ]
  then
    echo "Config for $1 exists."
    read -p "Do you want to replace it ? [y/n]" yn
    case ${yn} in
        [Yy]* ) rm -rfv $3 && ln -sfv $2 $3
    esac
  else
    ln -s $2 $3
  fi
}

for config in $(ls -A $BASEDIR/config);
do
  install_config ${config} $BASEDIR/config/${config} $HOME/.config/${config}
done

for homeconfig in $(ls -A $BASEDIR/home);
do
  install_config ${homeconfig} $BASEDIR/home/${homeconfig} $HOME/${homeconfig}
done

ln -sf $BASEDIR/config/hypr/wallpapers/pacman-dark.png \
       $HOME/.config/hypr/wallpapers/wallpaper.png
ln -sf $BASEDIR/config/kitty/gruvbox-dark.conf \
       $HOME/.config/kitty/style.conf
ln -sf $BASEDIR/config/rofi/gruvbox-dark.rasi \
       $HOME/.config/rofi/theme.rasi
ln -sf $BASEDIR/config/waybar/dark.css \
       $HOME/.config/waybar/theme.css

echo "Done."
