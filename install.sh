#!/bin/bash
DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
mkdir -p /usr/lib/asus-ryzen-power
cp $DIR/lib/* /usr/lib/asus-ryzen-power/
mkdir -p /usr/local/lib/systemd/system
cp $DIR/service/* /usr/local/lib/systemd/system/
systemctl enable --now asus-ryzen-power.timer
