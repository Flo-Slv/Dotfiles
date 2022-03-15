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
You may not have be abble to change brightness with fn+F5 / fn+F6.
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

Then restart your session.
