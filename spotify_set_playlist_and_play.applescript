set fadetime to 5 --seconds
set targetVol to 100
set playlistURI to "spotify:playlist:09731fG1cx7sxJT3Ea1Epx"

tell application "Spotify"
	set sound volume to 0
	set shuffling to true
	play track playlistURI
end tell

tell application "QLab" to activate

tell application "Spotify"
	set startVol to sound volume as number
	if (targetVol is greater than startVol) then
		repeat with volumeset from startVol to targetVol as integer
			set sound volume to startVol + volumeset
			delay fadetime / targetVol
		end repeat
	end if
end tell
