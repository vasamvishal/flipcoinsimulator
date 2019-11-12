# welcome to flip coin simulator
read -p "Enter the no of times to flip coin: " a
declare -A dictionary
tail=0;
head=0;
for(( count=0;count<a;count++ ))
do 
   	random=$(( RANDOM%2 ))
	if [ $random -eq 0 ]
	then 
	echo "Heads"
        head=$(( $head+1 ))
	else
	echo "Tails"
        tail=$(( $tail+1 ))
        
	fi
done
dictionary[head]=$head
dictionary[tail]=$tail

 echo ${dictionary[@]}

result=$(( $head*100 ))
headsresult=$(( $result/$a))
result=$(( $tail*100 ))
tailsresult1=$(( $result/$a))

echo ${dictionary1[@]}

