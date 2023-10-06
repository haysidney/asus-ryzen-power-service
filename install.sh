#!/bin/bash
DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Clone and build ryzen_smu for Rembrandt
# use the original ryzen_smu repo for any other ryzen cpu
# https://github.com/leogx9r/ryzen_smu
git clone https://gitlab.com/moson-mo/ryzen_smu.git
make -B -C $DIR/ryzen_smu

mkdir -p /usr/lib/asus-ryzen-power
cp $DIR/lib/* /usr/lib/asus-ryzen-power/
cp $DIR/ryzen_smu/ryzen_smu.ko /usr/lib/asus-ryzen-power/
mkdir -p /usr/local/lib/systemd/system
cp $DIR/service/* /usr/local/lib/systemd/system/
systemctl enable --now asus-ryzen-power.timer
