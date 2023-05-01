#!/bin/bash
if ! systemctl is-active --quiet firewalld.service; then
    var1=$(iptables -L "$1" | grep "$2")
    [ -n "$var1" ] && echo True || echo False
fi
