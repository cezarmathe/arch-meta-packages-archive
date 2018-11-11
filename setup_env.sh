#!/bin/bash

mkdir -p ./chroots
mkarchroot -C /etc/pacman.conf ./chroots/root base-devel

