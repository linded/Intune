#!/bin/bash
# Check if processor is Apple silicon
processortype=$(/usr/sbin/sysctl -n machdep.cpu.brand_string | grep -o "Intel")
if [[ -n "$processortype" ]]; then
    echo "Intel Type processor installed. Rosetta installation is not required."
else
    # Check if Rosetta is installed 
    if /usr/bin/pgrep oahd >/dev/null 2>&1; then
        echo "Rosetta is already installed and running. Nothing to do."
    else
        /usr/sbin/softwareupdate --install-rosetta --agree-to-license
    fi 
fi 
exit 0
