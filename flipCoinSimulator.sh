# welcome to flip coin simulator
read -p "Enter the no of times to flip coin: " a
headdouble=0;
taildouble=0;
headtail=0;
tailhead=0;
function flipcoin(){
declare -A dictionary
tail=1;
head=0;
for(( count=0;count<$1;count++ ))
do
   	random=$(( RANDOM%2 ))
         random1=$(( RANDOM%2 ))

	if [ $random -eq $random1 ]
	then
        if [ $random -eq $head ]
        then 
        	 echo "HeadsHeads"
        	 headdouble=$(( $headdouble+1 ))
	else
		echo "TailsTails"
        	taildouble=$(( $taildouble+1 ))
        

 	fi
	else
        	if [ $random -eq $head ]
                then
		headtail=$(( $headtail+1 ))
                else
                tailhead=$(( $tailhead+1 ))
	fi
	fi
done


echo $headtail
 echo ${dictionary[@]}

result=$(( $headtail*100 ))
headtailresult=$(( $result/$a))
result=$(( $tailhead*100 ))
tailheadresult=$(( $result/$a))
result=$(( $headdouble*100 ))
headdoubleresult=$(( $result/$a))

result=$(( $taildouble*100 ))
taildoubleresult=$(( $result/$a))


}

 flipcoin $a 

 #echo ${dictionary[@]}

#result=$(( $headtail*100 ))
#headtailresult=$(( $result/$a))
#result=$(( $tailhead*100 ))
#tailheadresult=$(( $result/$a))
#result=$(( $headdouble*100 ))
#headdoubleresult=$(( $result/$a))

#result=$(( $taildouble*100 ))
#taildoubleresult=$(( $result/$a))


