set AirplayDeviceName to "Apple TV"
set iTunesPlaylistName to "Loved"
set iTunesVolume to 100
set AirplayVolume to 20

activate application "iTunes"

tell application "iTunes"
	set AirplayNames to (get name of AirPlay devices)
	set AirplayDevices to (get AirPlay devices)
	set AirplayToPlay to {}
	repeat with i from 1 to length of AirplayNames
		if item i of AirplayNames as string = AirplayDeviceName then set end of AirplayToPlay to item i of AirplayDevices
	end repeat
	set current AirPlay devices to AirplayToPlay
end tell

tell application "iTunes"
	play playlist iTunesPlaylistName
	set the sound volume to iTunesVolume
end tell
