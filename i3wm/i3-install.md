# Install latest version of i3 Window Manager (i3wm) on Ubuntu 20.04 LTS.


<br>By default, if you do `sudo apt install i3`, it will install an "old" version of i3 (like 4.18 or something like that).
 
Instructions can be found on [i3wm's website](https://i3wm.org/docs/repositories.html).
But there are few more steps that are not explain on i3wm's website.

<br><br>1. Do the following commands on a terminal.
```sh
cd ~

/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2022.02.17_all.deb keyring.deb SHA256:52053550c4ecb4e97c48900c61b2df4ec50728249d054190e8a0925addb12fc6

sudo dpkg -i ./keyring.deb

sudo echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" >> /etc/apt/sources.list.d/sur5r-i3.list

sudo apt update
```

<br><br>2. If you have the following error when running `sudo apt update`
```sh
The following signatures couldn\'t be verified because the public key is not available: NO_PUBKEY E3CA1A89941C42E6
```

<br> You need to add `E3CA1A89941C42E6` to your trusted keys.
```sh
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E3CA1A89941C42E6
```

<br><br>3. If you have the following error when running `sudo apt update`
```sh
Skipping acquire of configured file 'universe/binary-i386/Packages' as repository 'http://debian.sur5r.net/i3 focal InRelease' doesn\'t support architecture 'i386'
```

<br>You juste need to modify this file `/etc/apt/sources.list.d/sur5r-i3.list` to tell it to accept amd64 architecture.
```sh
sudo vim /etc/apt/sources.list.d/sur5r-i3.list

deb [arch=amd64] http://debian.sur5r.net/i3/ focal universe
```

<br><br>4. Re run `apt update` then install i3 package.
```sh
sudo apt update

sudo apt install i3
```

<br>It will install i3 and all dependencies.
```sh
The following NEW packages will be installed:
  i3 i3-wm i3lock i3status libconfuse-common libconfuse2 libev4 libxcb-cursor0 libxcb-xrm0 libyajl2 suckless-tools
```

<br><br>5. Check version of i3.
```sh
i3 --version
i3 version 4.20 (2021-10-19) © 2009 Michael Stapelberg and contributors
```

<br><br>6. Restart your computer.
```sh
init 6
```

Now, you should be abble to select i3 before to log in.
Enjoy !
