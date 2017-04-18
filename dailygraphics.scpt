tell application "iTerm"
	activate
	
	tell current session of current tab of current window
		set newSession to (split vertically with same profile)
		write text "cd ~/Desktop/dailygraphics"
		write text "workon dailygraphics"
		write text "git pull"
	end tell
	tell second session of current tab of current window
		set newSession to (split horizontally with same profile)
		write text "cd ~/Desktop/dailygraphics"
		write text "workon dailygraphics"
		write text "killport 8000"
		write text "fab app"
	end tell
	tell third session of current tab of current window
		write text "cd ~/Desktop/graphics"
		write text "git pull"
	end tell
end tell