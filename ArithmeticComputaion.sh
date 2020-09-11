# program to take 3 inputs 

declare -A Dictionary
read -p "enter a" a
read -p "enter b" b
read -p "enter c" c
i=0
result1=$(( $a + $b *$c ))
Dictionary[$i]=$result1
(( ++i ))
# Expression2 calculated
result2=$(( $a * $b +$c ))
Dictionary[$i]=$result2
(( ++i ))
result3=$(( $c + $a /$b ))
Dictionary[$i]=$result3
(( ++i ))
result4=$(( $a % $b +$c ))
Dictionary[$i]=$result4
#echo Keys of Dictionary" ${!Dictionary[@]}
#echo values of Dictionary" ${Dictionary[@]}

# Dictionary values into array
array=()
length=${#Dictionary[@]}
for (( i=0; i<$length; i++ ))
do
        array[$i]=${Dictionary[$i]}
done
#echo length of array" ${#array[@]}
echo "Array without sorting" ${array[@]}
for (( i=0; i<$(( $length-1 )); i++ ))
do
        for (( j=$(( $i+1 )); j<$length; j++ ))
        do
                if [ ${array[i]} -gt ${array[j]} ]
                then
                        temp=${array[i]}
                        array[$i]=${array[j]}
                        array[$j]=$temp
                fi
        done
done
echo "Array values after sorting in Ascending Order" ${array[@]}


for (( i=0; i<$(( $length-1 )); i++ ))
do
        for (( j=$(( $i+1 )); j<$length; j++ ))
        do
                if [ ${array[i]} -lt ${array[j]} ]
                then
                        temp=${array[i]}
                        array[$i]=${array[j]}
                        array[$j]=$temp
                fi
        done
done
echo "Array values after sorting in Descending Order" ${array[@]}

