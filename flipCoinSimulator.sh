# welcome to flip coin simulator
read -p "Enter the no of times to flip coin: " a
for(( count=0;count<a;count++ ))
do 
   	random=$(( RANDOM%2 ))
	if [ $random -eq 0 ]
	then 
	echo "Heads"
	else
	echo "Tails"
	fi
done 
