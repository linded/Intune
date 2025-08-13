#!/bin/bash
dockutil="/usr/local/bin/dockutil"

$dockutil --remove all --allhomes --no-restart
$dockutil --add "/System/Applications/Launchpad.app" --allhomes --no-restart
$dockutil --add "/System/Applications/System Settings.app" --allhomes --no-restart
if [ -d "/Applications/Microsoft 365 Copilot.app" ]; then
    $dockutil --add "/Applications/Microsoft 365 Copilot.app" --allhomes --no-restart
else
    echo "Microsoft 365 Copilot is not installed."
fi
if [ -d "/Applications/Microsoft Edge.app" ]; then
    $dockutil --add "/Applications/Microsoft Edge.app" --allhomes --no-restart
else
    echo "Microsoft Edge is not installed."
fi
if [ -d "/Applications/Microsoft Outlook.app" ]; then
    $dockutil --add "/Applications/Microsoft Outlook.app" --allhomes --no-restart
else
    echo "Microsoft Outlook is not installed."
fi
if [ -d "/Applications/Microsoft Teams.app" ]; then
    $dockutil --add "/Applications/Microsoft Teams.app" --allhomes --no-restart
else
    echo "Microsoft Teams is not installed."
fi
if [ -d "/Applications/Microsoft Excel.app" ]; then
    $dockutil --add "/Applications/Microsoft Excel.app" --allhomes --no-restart
else
    echo "Microsoft Excel is not installed."
fi
if [ -d "/Applications/Microsoft Word.app" ]; then
    $dockutil --add "/Applications/Microsoft Word.app" --allhomes --no-restart
else
    echo "Microsoft Word is not installed."
fi
if [ -d "/Applications/Microsoft PowerPoint.app" ]; then
    $dockutil --add "/Applications/Microsoft PowerPoint.app" --allhomes --no-restart
else
    echo "Microsoft PowerPoint is not installed."
fi
if [ -d "/Applications/Microsoft OneNote.app" ]; then
    $dockutil --add "/Applications/Microsoft OneNote.app" --allhomes --no-restart
else
    echo "Microsoft OneNote is not installed."
fi
if [ -d "/Applications/PowerShell.app" ]; then
    $dockutil --add "/Applications/PowerShell.app" --allhomes --no-restart
else
    echo "PowerShell is not installed."
fi
if [ -d "/Applications/Slack.app" ]; then
    $dockutil --add "/Applications/Slack.app" --allhomes --no-restart
else
    echo "Slack is not installed."
fi
if [ -d "/Applications/VirtualBuddy.app" ]; then
    $dockutil --add "/Applications/VirtualBuddy.app" --allhomes --no-restart
else
    echo "VirtualBuddy is not installed."
fi
if [ -d "/Applications/Visual Studio Code.app" ]; then
    $dockutil --add "/Applications/Visual Studio Code.app" --allhomes --no-restart
else
    echo "Visual Studio Code is not installed."
fi
if [ -d "/Applications/Docker.app" ]; then
    $dockutil --add "/Applications/Docker.app" --allhomes --no-restart
else
    echo "Docker is not installed."
fi
if [ -d "/Applications/Windows App.app" ]; then
    $dockutil --add "/Applications/Windows App.app" --allhomes --no-restart
else
    echo "Windows App is not installed."
fi
if [ -d "/Applications/Company Portal.app" ]; then
    $dockutil --add "/Applications/Company Portal.app" --allhomes --no-restart
else
    echo "Company Portal is not installed."
fi

killall Dock
sudo rm -rf "/tmp/dockutil"
