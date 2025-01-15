#!/bin/bash

echo -en "\033[32;7m execute preference.sh \033[0m\n"

PREF_KEYBOARD="com.apple.preference.keyboard"
PREF_MOUSE="com.apple.preference.mouse"
PREF_DISPLAYS="com.apple.preference.displays"

if [ "RE" != "true" ]; then
  sleep 5
fi

osascript <<EOD
	tell application "System Preferences"
		activate
		reveal anchor "InputSources" of pane id "$PREF_KEYBOARD"
		return --for remove 'missing value'
	end tell
EOD
echo "Keyboard Tab key setting"

sleep 3

osascript <<EOD
	tell application "System Preferences"
		activate
		reveal anchor "KeyboardTab" of pane id "$PREF_KEYBOARD"
		return --for remove 'missing value'
	end tell
EOD
echo "Keyboard setting"

sleep 3

osascript <<EOD
	tell application "System Preferences"
		activate
		reveal pane id "$PREF_MOUSE"
		return --for remove 'missing value'
	end tell
EOD
echo "Mouse setting"

#sleep 3
#osascript <<EOD
#	tell application "System Preferences"
#		activate
#		reveal pane id "$PREF_DISPLAYS"
#		return --for remove 'missing value'
#	end tell
#EOD
#echo "Display setting"
