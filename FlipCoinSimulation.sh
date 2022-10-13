x

  echo ""
   echo "Welcome to Flip-Coin Simulation Problem"
   echo ""
 read -p "enter number of times to toss:" n

   Result=$((RANDOM%2))

 if [[ ${Result} -eq 0 ]];
  then
    echo "HEADS"
  elif [[ ${Result} -eq 1 ]]
 then
    echo "TAILS"
fi

  headcount=0
  tailcount=0
while(( $headcount != 21 && $tailcount != 21 ))
do
  # for(( i=1 ; i<=n; i++ ))
 #do
  coin=$(( $RANDOM%2 ))
  if [[ $coin == 1 ]]
  then
  echo -n "Head"
  echo ""
  ((headcount++))
  else
   echo -n "Tail"
    echo ""
  ((tailcount++))
  fi
#done
done 
echo ""

echo "The Heads count is $headcount and Tails Count is $tailcount"

if(( headcount > tailcount ))
then
    echo "Winner is Heads"
elif(( tailcount > headcount ))
then
    echo "Winner is Tails"
else    
    echo "Its tie"
fi





