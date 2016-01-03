#!/bin/bash

FILE=/sys/class/power_supply/BAT1/uevent
WENT_UP=false

lte() {
	[[ $(bc <<< "$1 <= $2") == 1 ]]
}

lt() {
	[[ $(bc <<< "$1 < $2") == 1 ]]
}

recalc() {
	FULL=$(grep POWER_SUPPLY_ENERGY_FULL_DESIGN $FILE | cut -d= -f2)
	CURRENT=$(grep POWER_SUPPLY_ENERGY_NOW $FILE | cut -d= -f2)
	PCT=$(bc -l <<< "$CURRENT/($FULL/100)")
	grep -q Charging $FILE && CHARGING=true || CHARGING=false
}

WARNING_LEVEL=10
POWEROFF_LEVEL=5
INTERVAL_SECONDS=10

in_terminal() {
	[[ $(readlink /proc/$$/fd/1) =~ (tty|pts) ]]
}

recalc

if in_terminal; then
	cat <<EOF
FULL:           $FULL
CURRENT:        $CURRENT
PCT REMAINING:  ${PCT:0:6}
EOF
fi

while sleep $INTERVAL_SECONDS; do
	recalc

	if $CHARGING; then
		WARNING_FLAG_RESET=true
		continue
	fi

	if lte $PCT $POWEROFF_LEVEL; then
		zenity --warning --text "Plug in or I'm shutting down in 30 seconds..." &
		sleep 30
		recalc
		$CHARGING || sudo poweroff
	elif lte $PCT $WARNING_LEVEL; then
		if ${WARNING_FLAG_RESET:=true}; then
			WARNING_FLAG_RESET=false
			zenity --warning --text "$WARNING_LEVEL% or less battery power remaining.\n"\
				"When it's less than $POWEROFF_LEVEL% I'll shutdown automatically." &
		fi
	fi
done
