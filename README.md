# GRUB HP theme

A GRUB theme that (nearly) matches the HP boot menu on modern HP systems,
bringing a connection between HP design and the GRUB2 bootloader.

This is designed for HP devices by the community and tested on Ubuntu,
but it should work on other distributions and manufacturers.

## Install

Login to a root shell:

```
sudo -i
```

Edit the GRUB configuration:

```
nano /etc/default/grub
```

Set the GRUB resolution to 1024x768 by changing the following line:

```
#GRUB_GFXMODE=640x480
```

to:

```
GRUB_GFXMODE=1024x768
```

Disable the timeout by changing `GRUB_TIMEOUT=10` to `GRUB_TIMEOUT=-1`.

**GRUB 2.06+:** If you haven't already, enable `os-prober` to look for other operating
systems, by adding this line:

```
GRUB_DISABLE_OS_PROBER="false"
```

Press `ctrl+x`, `y`, then Enter to apply configuration. Run the installer:

```
apt install -y curl
bash -c "$(curl https://raw.githubusercontent.com/TylerMS887/grub-hp-theme/main/install.sh)"
```

Install and run `grub-customizer`:

```
add-apt-repository universe
apt install grub-customizer
grub-customizer
```

Go to the "Appearance" tab and change "Theme" to "hp-theme". Click "Save" and restart the system
to see the new theme!

## Docs

[GRUB2 theme specification](https://www.gnu.org/software/grub/manual/grub/html_node/Theme-file-format.html)
