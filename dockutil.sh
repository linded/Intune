#!/bin/bash
dockutil="/usr/local/bin/dockutil"
if [[ -x $dockutil ]]; then
    echo "Dockutil is already installed."
else
    # Install dockutil from GitHub
    curl -sL "https://github.com/kcrawford/dockutil/releases/download/3.1.3/dockutil-3.1.3.pkg" -o /tmp/dockutil.pkg
    sudo installer -pkg "/tmp/dockutil.pkg" -target /
fi

# Cleanup
rm /tmp/dockutil.pkg