#!/bin/bash

echo -en "\033[32;7m execute preference.sh \033[0m\n"

PREF_KEYBOARD="com.apple.preference.keyboard"
PREF_MOUSE="com.apple.preference.mouse"
PREF_DISPLAYS="com.apple.preference.displays"

if [ "$#" -eq 0 ]; then
  echo "init wait "
  sleep 5
fi

if [[ "$#" -eq 0 || "$1" -eq 1 ]]; then
echo "Keyboard Tab key setting"
osascript <<EOD
	tell application "System Preferences"
		activate
		reveal anchor "InputSources" of pane id "$PREF_KEYBOARD"
		return --for remove 'missing value'
	end tell
EOD
sleep 3
fi


if [[ "$#" -eq 0 || "$1" -eq 2 ]]; then
echo "Keyboard setting"
osascript <<EOD
	tell application "System Preferences"
		activate
		reveal anchor "KeyboardTab" of pane id "$PREF_KEYBOARD"
		return --for remove 'missing value'
	end tell
EOD
sleep 5
fi

if [[ "$#" -eq 0 || "$1" -eq 3 ]]; then
echo "Mouse setting"
osascript <<EOD
	tell application "System Preferences"
		activate
		reveal pane id "$PREF_MOUSE"
		return --for remove 'missing value'
	end tell
EOD
sleep 3
fi

if [[ "$1" -eq 4 ]]; then
echo "Display setting"
osascript <<EOD
	tell application "System Preferences"
		activate
		reveal pane id "$PREF_DISPLAYS"
		return --for remove 'missing value'
	end tell
EOD
fi
