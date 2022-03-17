# Troubleshooting
<br>

### Enable touchpad
You may lost your touchpad with i3. And you will have to click every time...
<br><br>A quick fix by launching this command in a terminal.
```sh
sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
EndSection

EOF
```

Then restart your session. TADA !
<br><br><br>

### Enable keys for brightness
If you use an Asus computer, you may not have be abble to change brightness with fn+F5 / fn+F6.
You can fix it with `brightnessctl`.
```sh
sudo apt install brightnessctl
```
Then, add these lines to your i3 `config` file.
```sh
# To bind keys for change brightness.
bindsym XF86MonBrightnessUp exec brightnessctl set +10%
bindsym XF86MonBrightnessDown exec brightnessctl set 10%-
```
As brightnessctl require to be launch with root privileges, you need to add
yourself in the 'video' group. Indeed, brightnessctl require write permissions and allow only users of 'video' group as specified [here](https://github.com/Hummer12007/brightnessctl/blob/master/README.md#permissions).
```sh
# Create a group called video (if not exist)
sudo groupadd video

# Add yourself (in my case user is floslv) to video group
usermod -a -G video floslv
```
Autorize 'video' group to launch brightnessctl with no password.
```sh
# Modify /etc/sudoers file to be edited with vim and not nano by default.
sudo visudo /etc/sudoers

# At top of /etc/sudoers file, enter this line and save/close
# To save and close with nano, it should be: ctrl+x then y then enter
Defaults editor=/usr/bin/vim

# Go to /etc/sudoers.d/ and create a new file called sudoers.
# Indeed, it's recommended to not edit /etc/sudoers directly.
cd /etc/sudoers.d

sudo visudo sudoers

# Add the following lines.
Defaults editor=/usr/bin/vim

%floslv ALL=NOPASSWD:/usr/bin/brightnessctl
```

Then restart your computer.
