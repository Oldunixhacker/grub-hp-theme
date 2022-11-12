if ! [[ "$(id -u)" = "0" ]]
then
  echo "Please run as root."
  exit 1
fi
echo "Installing HP theme."
if ! [[ -x "/bin/git" ]]
then
   echo "Please install git."
   exit 1
fi
git clone https://github.com/TylerMS887/grub-hp-theme --depth 1
cd grub-hp-theme
if ! [[ -d "/boot/grub/themes" ]]
then
   echo "Creating themes folder..."
   mkdir /boot/grub/themes
fi
cp -r hp-menu /boot/grub/themes/hp-theme
echo "Installed, cleaning up."
cd ..
rm -r grub-hp-theme
echo "To apply, continue reading installation instructions."
