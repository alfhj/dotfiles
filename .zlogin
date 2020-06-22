if [ ! $DISPLAY ]; then
	exec sway >> ~/log/sway.log 2>&1
fi
        
