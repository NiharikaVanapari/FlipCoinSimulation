echo "Welcome to Flip Coin Simulation"
read -p "how many times you want to toss the coin: " num
headcount=0
tailcount=0
for (( i=1; i<=$num; i++))
do
	random=$((RANDOM%2))
	if [ $random -eq 1 ]
	then
		((headcount++))
	else
		((tailcount++))
	fi
done

echo "Head won $headcount times"
echo "Tail won $tailcount times"
