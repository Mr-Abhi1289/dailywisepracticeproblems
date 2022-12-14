
declare -A rollDie
	echo "${rollDie[@]}"
	result=1
while [ $(( rollDie[$result] )) -ne 6 ]
do
	result=$((RANDOM%6+1))
	rollDie[$result]=$((rollDie[$result]+1))
	echo "  "
	echo "${rollDie[@]}"
	echo "  "
done

length=${#rollDie[@]}
	echo "length:"$length

minimumValue=$((rollDie[1]))
maximumValue=0

for (( index=1; index<=length; index++ ))
do
	if [ $((rollDie[$index])) -gt  $maximumValue ]
	then
		maximum=$((rollDie[$index]))
	fi

	if [ $((rollDie[$index])) -lt  $minimumValue ]
	then
		minimum=$((rollDie[$index]))
	fi
done

echo "Minimum Number" "$minimum"
echo "Maximum Number" "$maximum"
