# program to take 3 inputs 

declare -A Dictionary
read -p "enter a" a
read -p "enter b" b
read -p "enter c" c
i=1
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
echo "Keys of Dictionary" ${!Dictionary[@]}
echo "values of Dictionary" ${Dictionary[@]}
