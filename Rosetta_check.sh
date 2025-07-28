#!/bin/bash
processortype=$(/usr/sbin/sysctl -n machdep.cpu.brand_string | grep -o "Intel")
if [[ -n "$processortype" ]]; then
    echo "Intel Type processor installed. Rosetta 2 installation is not required."
else
    if /usr/bin/pgrep oahd >/dev/null 2>&1; then
        echo "Rosetta 2 is already installed and running."
    else
        /usr/sbin/softwareupdate --install-rosetta --agree-to-license
    fi 
fi 
exit 0
