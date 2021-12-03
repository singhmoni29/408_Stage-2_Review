# !/bin/bash 

declare -A diceDictionary

for((i=1; i < 60; i++))
do
	diceValue=$(( ( RANDOM % 6 ) + 1 ))
	case $diceValue in

	  1)
		echo "Dice Side 1"
		((diceDictionary[$diceValue]+=1))
		echo "Dice 1 appear :${diceDictionary[1]} times"
		;;

	  2)
		echo "Dice Side 2"
		((diceDictionary[$diceValue]+=1))
		echo "Dice 2 appear :${diceDictionary[2]} times"
		;;
		
	  3)
		echo "Dice Side 3"
		((diceDictionary[$diceValue]+=1))
		echo "Dice 3 appear :${diceDictionary[3]} times"
		;;
		
	  4)
		echo "Dice Side 4"
		((diceDictionary[$diceValue]+=1))
		echo "Dice 4 appear :${diceDictionary[4]} times"
		;;
		
	  5)
		echo "Dice Side 5"
		((diceDictionary[$diceValue]+=1))
		echo "Dice 5 appear :${diceDictionary[5]} times"
		;;
		
	  6)
		echo "Dice Side 6"
		((diceDictionary[$diceValue]+=1))
		echo "Dice 6 appear :${diceDictionary[6]} times"
		;;

	  *)
		echo -n "Unknown dice value\n"
		;;
	esac
	
	
	max=0
	max_key=0
	for j in "${!diceDictionary[@]}";do
		if (( ${diceDictionary["$j"]} > max));then
				max="${diceDictionary["$j"]}"
				max_key="$j"
		fi
	done
	
	
	if [[ $max -eq 10 ]]; 
	then
		echo $max
		echo "Dice side= $max_key :::: Repeated Maximum time which is= $max"
		break
	fi
done

echo "${diceDictionary[@]}"

min=10
min_key=0
for k in "${!diceDictionary[@]}";do
	if (( ${diceDictionary["$k"]} < min));then
			min="${diceDictionary["$k"]}"
			min_key="$k"
	fi
done
echo "Dice side= $min_key :::: Repeated Minimum time which is= $min"
