# !/bin/bash

declare -a randomArray
echo "Adding element to array "
randomArray=()
randomArray+=($(((RANDOM%90)+100)))
randomArray+=($(((RANDOM%90)+100)))
randomArray+=($(((RANDOM%90)+100)))
randomArray+=($(((RANDOM%90)+100)))
randomArray+=($(((RANDOM%90)+100)))
randomArray+=($(((RANDOM%90)+100)))
randomArray+=($(((RANDOM%90)+100)))
randomArray+=($(((RANDOM%90)+100)))
randomArray+=($(((RANDOM%90)+100)))
randomArray+=($(((RANDOM%90)+100)))

echo "Here are the array elements: ${randomArray[@]}"

largest=${randomArray[0]}
smallest=${randomArray[0]}
secondLargest='unset'
secondSmallest='unset'

for((i=1; i < ${#randomArray[@]}; i++))
do

  if [[ ${randomArray[i]} > $largest ]]
  then
    secondLargest=$largest
    largest=${randomArray[i]}
  elif (( ${randomArray[i]} < $largest )) && (( ${randomArray[i]} > $secondLargest ))
  then
    secondLargest=${randomArray[i]}
  fi


  if [[ ${randomArray[i]} < $smallest ]]
  then
    secondSmallest=$smallest
    smallest=${randomArray[i]}
  elif (( ${randomArray[i]} != $smallest )) && { [[ "$secondSmallest" = "unset" ]] || [[ ${randomArray[i]} < $secondSmallest ]]; }
  then
    secondSmallest=${randomArray[i]}
  fi
done


echo "Second Largest value of array is: $secondLargest"
echo "Second Smallest value of array is: $secondSmallest"



for ((i = 0; i<${#randomArray[@]}; i++))
  do

for((j = 0; j<${#randomArray[@]}-i-1; j++))
  do
    if [ ${randomArray[j]} -gt ${randomArray[$((j+1))]} ]
    then
        temp=${randomArray[j]}
        randomArray[$j]=${randomArray[$((j+1))]}  
        randomArray[$((j+1))]=$temp

    fi
  done
done

echo "Array in sorted order :${randomArray[*]}"


echo "Second Largest value of sorted array is: ${randomArray[${#arr[@]}-2]}"
echo "Second Smallest value of sorted array is: ${randomArray[0+1]}"

