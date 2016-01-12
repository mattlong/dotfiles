# setup local pypi mirror
mkdir -p ~/Library/LaunchAgents
cp ~/.devpi/net.devpi.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/net.devpi.plist
launchctl start net.devpi
