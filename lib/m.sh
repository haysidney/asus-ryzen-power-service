#!/bin/bash
sudo insmod /usr/lib/asus-ryzen-power/ryzen_smu.ko
sudo ryzenadj -b 80000
sudo ryzenadj -c 70000
sudo ryzenadj -f 85
