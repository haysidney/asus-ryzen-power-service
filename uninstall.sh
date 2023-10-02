systemctl disable --now asus-ryzen-power.timer
systemctl disable --now asus-ryzen-power.service
rm -rf /usr/lib/asus-ryzen-power
rm /usr/local/lib/systemd/system/asus-ryzen-power.*

