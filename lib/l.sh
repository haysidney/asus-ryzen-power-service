#!/bin/bash
sudo insmod /usr/lib/asus-ryzen-power/ryzen_smu.ko
sudo ryzenadj -b 8000
sudo ryzenadj -c 5000
