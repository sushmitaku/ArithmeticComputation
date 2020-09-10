# program to take 3 inputs 
read -p "enter a" a
read -p "enter b" b
read -p "enter c" c
echo "$a  $b  $c "
#result1=$(( $a + $b *$c ))
#echo $result1
# Expression2 calculated
#result2=$(( $a * $b +$c ))
#echo $result2
#result3=$(( $c + $a /$b ))
#echo $result3
result3=$(( $a % $b +$c ))
echo $result3

