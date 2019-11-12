# welcome to flip coin simulator
read -p "Enter the no of times to flip coin: " a
headdoubletail=0;
taildoublehead=0;
headtriplet=0;
tailtriplet=0;
headtaildouble=0;
tailheaddouble=0;
headtailhead=0;
tailheadtail=0;

headdouble=0;
taildouble=0;
headtail=0;
tailhead=0;
declare -A dictionary
function flipcoin1()
{
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
result=$(( $head*100 ))
headsresult=$(( $result/$a))
result=$(( $tail*100 ))
tailsresult1=$(( $result/$a))
}
flipcoin1 $a
dictionary[head]=$head
dictionary[tail]=$tail

echo ${dictionary[@]}


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
dictionary[headtail]=$headtail
dictionary[tailhead]=$tailhead
dictionary[headdouble]=$headdouble
dictionary[taildouble]=$taildouble


function flipcoin2(){
declare -A dictionary
tail=1;
head=0;
for(( count=0;count<$1;count++ ))
do
   	random=$(( RANDOM%2 ))
         random1=$(( RANDOM%2 ))
    	random2=$(( RANDOM%2 ))
	if (( $random == $random1 & $random1 == $random2 ))
	then
        if [ $random -eq $head ]
        then 
        	 echo "HeadsHeads"
        	 headtriplet=$(( $headtriplet+1 ))
	else

		echo "TailsTails"
        	tailtriplet=$(( $tailtriplet+1 ))
 
	fi
	elif [ $random -eq $random1 ]
		then
	     if [ $random -eq $head  ]
	then
		headdoubletail=$(( $headdoubletail+1 ))
               else
                taildoublehead=$(( $taildoublehead+1 ))
        	fi

	 elif (( $random != $random1 & $random1 ==$random2 ))
                then
             if [ $random -eq $head ]
                then
                headtaildouble=$(( $headtaildouble+1 ))
                else
                tailheaddouble=$(( $tailheaddouble+1 ))
                fi
                
             
         else
             if [ $random -eq $head  ]
                then
                headtailhead=$(( $headtailhead+1 ))
                else
                tailheadtail=$(( $tailheadtail+1 ))
                fi
                

          fi
done

result=$(( $headdoubletail*100 ))
headdoubletailresult=$(( $result/$a))
result=$(( $taildoublehead*100 ))
taildoubleheadresult=$(( $result/$a))
result=$(( $headtriplet*100 ))
headtripletresult=$(( $result/$a))
result=$(( $tailtriplet*100 ))
tailtripletresult=$(( $result/$a))
result=$(($headtaildouble*100 ))
headtaildoubleresult=$(( $result/$a))
result=$(( $tailheaddouble*100 ))
tailheaddoubleresult=$(( $result/$a))

result=$(( $headtailhead*100 ))
headtailheadresult=$(( $result/$a))
result=$(( $tailheadtail*100 ))
tailheadtailresult=$(( $result/$a))
}

flipcoin2 $a 
dictionary[headdoubletail]=$headdoubletail
dictionary[taildoublehead]=$taildoublehead
dictionary[headtriplet]=$headtriplet
dictionary[tailtriplet]=$tailtriplet
dictionary[headtaildouble]=$headtaildouble
dictionary[tailheaddouble]=$tailheaddouble
dictionary[headtailhead]=$headtailhead
dictionary[tailheadtail]=$tailheadtail

result=$( printf "%s " ${!dictionary[@]} ${dictionary[@]} | sort -nr | awk {'print $1'}   )
echo ${dictionary[result]}


 echo ${dictionary[@]}

#result=$(( $headtail*100 ))
#headtailresult=$(( $result/$a))
#result=$(( $tailhead*100 ))
#tailheadresult=$(( $result/$a))
#result=$(( $headdouble*100 ))
#headdoubleresult=$(( $result/$a))

#esult=$(( $taildouble*100 ))
#taildoubleresult=$(( $result/$a))


