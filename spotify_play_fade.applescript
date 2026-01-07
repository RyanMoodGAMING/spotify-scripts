set fadetime to 5 --seconds
set targetVol to 100

tell application "Spotify"
	set sound volume to 0
	play
	set startVol to sound volume as number
	if (targetVol is greater than startVol) then
		repeat with volumeset from startVol to targetVol as integer
			set sound volume to startVol + volumeset
			delay fadetime / targetVol
		end repeat
	end if
end tell
