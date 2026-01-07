set fadetime to 5 --seconds

tell application "Spotify"
	set startVol to sound volume as number
	repeat with volumeset from 0 to startVol as integer
		set sound volume to startVol - volumeset
		delay fadetime / startVol
	end repeat
  pause
end tell
