#!/bin/sh
echo "enter username to adduser"
read name
adduser $name
passwd $name
